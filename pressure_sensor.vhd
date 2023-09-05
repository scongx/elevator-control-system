library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pressure_sensor is
port( clk:in std_logic; --如果clk接入一个周期为5us的时钟，pd_sck正脉冲持续时间为5us
		rst:in std_logic; --低电平有效
		door:in std_logic; --电梯逻辑模块输入到本模块的使能信号
		dout:in std_logic; --hx711的数据输出端作为本模块的数据输入端
		beep:out std_logic; --控制蜂鸣器，低电平有效
		pd_sck:out std_logic; --hx711的数字输入端，pd_sck正脉冲时间最大50us，最小为0.2us
		overweight:out std_logic --超重信号，输入到电机模块
);
end pressure_sensor;

architecture behav of pressure_sensor is

	signal data_24:std_logic_vector(23 downto 0); --存储24bit数据
	signal count:integer range 0 to 27; --累计pd_sck输出了多少个脉冲
	
begin
	process(clk,rst)
	
		type state_type is(t0,t1,t2,t3); 
		--t0为准备状态，t1状态和t2状态都是数据传输状态，其中t1状态时pd_sck为高电平，t2状态时pd_sck为低电平，
		--t3状态为第25个脉冲下的低电平状态，在该状态对接收到的24bit进行数据处理
		variable state:state_type;
		variable data:std_logic_vector(23 downto 0); --接收从hx711的dout端口输出的24bit数据
		
	begin
		if rst='0' then
			pd_sck<='0';
			count<=24;
			state:=t0;
			data:=(others=>'0');
			data_24<=(others=>'0');
		elsif rising_edge(clk) then
			if door='0' then
				pd_sck<='0';
				count<=24;
				state:=t0;
				data:=(others=>'0');
				data_24<=(others=>'0');
			elsif door='1' then
				data_24<=data_24;
				case state is
				when t0=>
					pd_sck<='0';
					count<=24;
					data:=(others=>'0');
					if dout='1' then --dout为高电平时表明ad还未准备好输出数据
						state:=t0;
					elsif dout='0' then --dout从高电平转换为低电平后才可以开始接收数据
						state:=t1;
					end if;
				when t1=>
					pd_sck<='1'; 
					data:=data;
					if count=0 then
						count<=24;
						state:=t3;
					else
						count<=count;
						state:=t2;
					end if;
				when t2=>
					pd_sck<='0'; 
					data(count-1):=dout;
					count<=count-1;
					state:=t1;
				when t3=>
					pd_sck<='0';
					count<=count;
					data:=data;
					data_24<=data;
					state:=t0;
				end case;
			end if;
		end if;
	end process;
	
	process(clk,rst)
	begin
		if rst='0' then
			beep<='1';
			overweight<='0';
		elsif rising_edge(clk) then
			if door='0' then
				beep<='1';
				overweight<='0';
			elsif door='1' then	
				if data_24>500000 then
					beep<='0';
					overweight<='1';
				else
					beep<='1';
					overweight<='0';
				end if;
			end if;
		end if;
	end process;
end behav;