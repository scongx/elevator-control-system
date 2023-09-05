library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity logic is
generic(m:natural:=100000000;--m:模拟电梯通过一层所需时间为2s
		thr:natural:=25000000);--thr:假定电梯从运行到停止的所需要的时间为0.5s
port(clk:in std_logic;
	rst:in std_logic;
	door:out std_logic;--电机使能
	en:in std_logic;--电机模块反馈信号，1表示关门完成，电梯可以转换状态
	num:buffer integer range 0 to 3;--当前显示楼层
	direction:buffer integer range 0 to 2;--方向信号，0代表无方向，1代表向上，2代表向下
	key_input:in std_logic_vector(6 downto 0)
);
end logic;

architecture behav of logic is
	signal stop:std_logic;--0代表电梯运行，1代表电梯停止，停止时计时器不能计时
	alias key:std_logic_vector(2 downto 0)is key_input(6 downto 4);--电梯内部按键信号，一层索引为0
	alias key_up:std_logic_vector(1 downto 0)is key_input(3 downto 2);--请求向上按键信号，一层索引为0
	alias key_down:std_logic_vector(1 downto 0)is key_input(1 downto 0);--请求向下按键信号，最上层索引为1
	signal key_latch:std_logic_vector(2 downto 0);
	signal up_latch:std_logic_vector(1 downto 0);
	signal down_latch:std_logic_vector(1 downto 0);
	signal cnt:integer range 0 to m;
	signal floor:integer range 0 to 3;--下一个要去往的楼层，0代表没有楼层要去
begin
	process(clk,rst)--模拟运行时间	
	begin
		if rst='0' then
			num<=1;
			cnt<=m;
		elsif rising_edge(clk) then
			if stop='1' then
				num<=num;
				cnt<=m;
			elsif stop='0' then
				if direction=1 then
					cnt<=cnt-1;
					if cnt=1 then
						num<=num+1;
						cnt<=m;
					end if;
				elsif direction=2 then
					cnt<=cnt-1;
					if cnt=1 then
						num<=num-1;
						cnt<=m;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	process(clk,rst)--寄存读入的键盘信号
	begin
		if rst='0' then
			key_latch<="111";
			up_latch<="11";
			down_latch<="11";
		elsif rising_edge(clk) then
			if num=1 and floor=1 then
				key_latch(0)<='1';--到达目的楼层后，恢复初值
			elsif key(0)='0' then
				key_latch(0)<='0';
			end if;
			if num=2 and floor=2 then
				key_latch(1)<='1';
			elsif key(1)='0' then
				key_latch(1)<='0';
			end if;
			if num=3 and floor=3 then
				key_latch(2)<='1';
			elsif key(2)='0' then
				key_latch(2)<='0';
			end if;
			if key_up(0)='0' then
				up_latch(0)<='0';
			elsif num=1 and floor=1 and direction=1 then
				up_latch(0)<='1';
			end if;
			if key_up(1)='0' then
				up_latch(1)<='0';
			elsif num=2 and floor=2 and direction=1 then
				up_latch(1)<='1';
			end if;
			if key_down(0)='0' then
				down_latch(0)<='0';
			elsif num=2 and floor=2 and direction=2 then
				down_latch(0)<='1';
			end if;
			if key_down(1)='0' then
				down_latch(1)<='0';
			elsif num=3 and floor=3 and direction=2 then
				down_latch(1)<='1';
			end if;
		end if;
	end process;
			
	process(clk,rst)--状态转换
		type state_type is(s0,s1,s2,s3);--s0电梯停止，s1电梯上行，s2电梯下行，s3电梯正在开门或关门
		variable state:state_type;
	begin
		if rst='0' then
			direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
		elsif rising_edge(clk) then
			case state is
				when s0=>
					if num=1 then --电梯停在第一层
						if up_latch(0)='0' or key_latch(0)='0' then --一层有开门请求信号
							direction<=1; door<='1'; stop<='1'; floor<=1; state:=s3;
						elsif up_latch(1)='0' or down_latch(0)='0' or key_latch(1)='0' then --有前往二楼的请求信号
							direction<=1; door<='0'; stop<='0'; floor<=2; state:=s1;
						elsif down_latch(1)='0' or key_latch(2)='0' then --有前往三楼的请求信号
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						else --无动作
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					elsif num=2 then --电梯停在第二层
						if up_latch(1)='0' then --来自电梯外部向上按键的开门请求信号
							direction<=1; door<='1'; stop<='1'; floor<=2; state:=s3;
						elsif down_latch(0)='0' or key_latch(1)='0' then --来自电梯外部向下按键或电梯内部二楼的开门请求信号
							direction<=2; door<='1'; stop<='1'; floor<=2; state:=s3;
						elsif up_latch(0)='0' or key_latch(0)='0' then --有前往一楼的请求信号
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						elsif down_latch(1)='0' or key_latch(2)='0' then --有前往三楼的请求信号
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						else --无动作
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					elsif num=3 then --电梯停在第三层
						if down_latch(1)='0' or key_latch(2)='0' then --三层有开门请求信号
							direction<=2; door<='1'; stop<='1'; floor<=3; state:=s3;
						elsif up_latch(1)='0' or down_latch(0)='0' or key_latch(1)='0' then --有前往二楼的请求信号
							direction<=2; door<='0'; stop<='0'; floor<=2; state:=s2;
						elsif up_latch(0)='0' or key_latch(0)='0' then --有前往一楼的请求信号
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						else --无动作
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					end if;
				when s1=> --电梯上行
					if num=1 then 
						if ((key(1)='0' or key_up(1)='0') and cnt>thr) then --如果中途有二楼请求信号，判断来不来得及停下再作下一步动作
							direction<=1; door<='0'; stop<='0'; floor<=2; state:=s1;
						else
							direction<=1; door<='0'; stop<='0'; floor<=floor; state:=s1;
						end if;
					elsif num=2 then
						if floor=2 then --direction<=1; door<='1'; stop<='1'; floor<=2; state:=s3;
							door<='1'; stop<='1'; floor<=2; state:=s3;
							if key_latch(1)='0' then
								direction<=direction;
							elsif up_latch(1)='0' then
								direction<=1;
							elsif down_latch(0)='0' then
								direction<=2;
							end if;
						else
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						end if;
					elsif num=3 then --已经上行到了第三层，改变方向，进入到开关门状态
						direction<=2; door<='1'; stop<='1'; floor<=3; state:=s3;
					end if;
				when s2=> --电梯下行
					if num=3 then
						if ((key(1)='0' or key_down(0)='0') and cnt>thr) then --如果中途有二楼请求信号，判断来不来得及停下再作下一步动作
							direction<=2; door<='0'; stop<='0'; floor<=2; state:=s2;
						else
							direction<=2; door<='0'; stop<='0'; floor<=floor; state:=s2;
						end if;
					elsif num=2 then 
						if floor=2 then --direction<=2; door<='1'; stop<='1'; floor<=2; state:=s3;
							door<='1'; stop<='1'; floor<=2; state:=s3;
							if key_latch(1)='0' then
								direction<=direction;
							elsif up_latch(1)='0' then
								direction<=1;
							elsif down_latch(0)='0' then
								direction<=2;
							end if;
						else
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						end if;
					elsif num=1 then
						direction<=1; door<='1'; stop<='1'; floor<=1; state:=s3;
					end if;
				when s3=>
					if en='0' then --电机还在工作的话，保持状态，下面的if语句用于决定电梯的下一个目标楼层和运动方向
						door<='1'; stop<='1'; state:=s3;
						if num=1 then
							if key_latch(0)='0' or up_latch(0)='0' then
								direction<=1; floor<=1; --num=floor，latch恢复高电平
							elsif key_latch(1)='0' or up_latch(1)='0' then
								direction<=1; floor<=2;
							elsif key_latch(2)='0' or down_latch(1)='0' then
								direction<=1; floor<=3;
							elsif down_latch(0)='0' then --电梯现在处于底层，二楼向下的请求优先级最小，所以放在后面
								direction<=1; floor<=2;
							else 
								direction<=1; floor<=0;
							end if;
						elsif num=2 then 
							if direction=1 then
								if key_latch(1)='0' or up_latch(1)='0' then
									direction<=1; floor<=2; --num=floor，latch恢复高电平
								elsif key_latch(2)='0' or down_latch(1)='0' then
									direction<=1; floor<=3;
								else
									direction<=1; floor<=0;
								end if;
							elsif direction=2 then
								if key_latch(1)='0' or down_latch(0)='0' then
									direction<=2; floor<=2; --num=floor，latch恢复高电平
								elsif key_latch(0)='0' or up_latch(0)='0' then
									direction<=2; floor<=1;
								else
									direction<=2; floor<=0;
								end if;
							end if;
						elsif num=3 then
							if key_latch(2)='0' or down_latch(1)='0' then
								direction<=2; floor<=3;
							elsif key_latch(1)='0' or down_latch(0)='0' then
								direction<=2; floor<=2;
							elsif key_latch(0)='0' or up_latch(0)='0' then
								direction<=2; floor<=1;
							elsif up_latch(1)='0' then --电梯现在处于顶层，二楼向上的请求优先级最小，所以放在后面
								direction<=2; floor<=2;
							else
								direction<=2; floor<=0;
							end if;
						end if;
					elsif en='1' then --电机停止
						if num=floor then --这种情况是电梯本来处于s0停止状态，但是收到了请求信号
							direction<=direction; door<='1'; stop<='1'; floor<=floor; state:=s3;
						elsif floor=0 then --电机已经完成了开关门任务，并且也没有外部请求信号，于是进入s0停止状态
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						elsif floor=1 then
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						elsif floor=2 then
							if num=1 then
								direction<=1; door<='0'; stop<='0'; floor<=2; state:=s1;
							elsif num=3 then
								direction<=2; door<='0'; stop<='0'; floor<=2; state:=s2;
							end if;
						elsif floor=3 then
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						end if;
					end if;
			end case;
		end if;
	end process;    
end behav;                                   			