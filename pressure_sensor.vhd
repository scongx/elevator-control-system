library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pressure_sensor is
port( clk:in std_logic; --���clk����һ������Ϊ5us��ʱ�ӣ�pd_sck���������ʱ��Ϊ5us
		rst:in std_logic; --�͵�ƽ��Ч
		door:in std_logic; --�����߼�ģ�����뵽��ģ���ʹ���ź�
		dout:in std_logic; --hx711�������������Ϊ��ģ������������
		beep:out std_logic; --���Ʒ��������͵�ƽ��Ч
		pd_sck:out std_logic; --hx711����������ˣ�pd_sck������ʱ�����50us����СΪ0.2us
		overweight:out std_logic --�����źţ����뵽���ģ��
);
end pressure_sensor;

architecture behav of pressure_sensor is

	signal data_24:std_logic_vector(23 downto 0); --�洢24bit����
	signal count:integer range 0 to 27; --�ۼ�pd_sck����˶��ٸ�����
	
begin
	process(clk,rst)
	
		type state_type is(t0,t1,t2,t3); 
		--t0Ϊ׼��״̬��t1״̬��t2״̬�������ݴ���״̬������t1״̬ʱpd_sckΪ�ߵ�ƽ��t2״̬ʱpd_sckΪ�͵�ƽ��
		--t3״̬Ϊ��25�������µĵ͵�ƽ״̬���ڸ�״̬�Խ��յ���24bit�������ݴ���
		variable state:state_type;
		variable data:std_logic_vector(23 downto 0); --���մ�hx711��dout�˿������24bit����
		
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
					if dout='1' then --doutΪ�ߵ�ƽʱ����ad��δ׼�����������
						state:=t0;
					elsif dout='0' then --dout�Ӹߵ�ƽת��Ϊ�͵�ƽ��ſ��Կ�ʼ��������
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