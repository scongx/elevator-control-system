library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity motor is
generic(n:integer:=1024;--n:�ɲ���Ǽ���õ��ת��90����Ҫ1024������
		m:integer:=1026);
port(clk1:in std_logic;--50Mʱ��
	clk2:in std_logic;--�ӷ�Ƶ�������ʱ��
	rst:in std_logic;--�͵�ƽ��Ч
	door:in std_logic;--���ʹ���ź�
	overweight:in std_logic;--�����ź�
	key_open,key_close:in std_logic;--����������źţ��͵�ƽ��Ч
	en:out std_logic;--�����߼�ģ��ʹ���ź�
	y:out std_logic_vector(3 downto 0)--��������źţ��Ӹ�λ����λ�ֱ��ӦD��C��B��A
);
end motor;

architecture behav of motor is

	type step_type is(s0,s1,s2,s3,s4,s5,s6,s7,s8);--��������������������ϳ�ʼ״̬���Ÿ�״̬
	signal pre_step,next_step:step_type;
	type direct_type is(d0,d1,d2);--�������d0��ʾ�޶�����d1��ʾ���ŷ���d2��ʾ���ŷ���
	signal direction:direct_type;
	signal target:integer range 0 to n+1;--����Ŀ��ֵ
	signal count:integer range 0 to n+1;
	
begin
	process(clk2,rst)--�������״̬����
		type state_type is(c0,c1,c2,c3);--c0��ʾ�����ʼ״̬��c1��ʾ������ڿ���״̬��c2��ʾ������ڹ���״̬��c3��ʾ��ʱ״̬
		variable state:state_type;
		variable mark:integer range 0 to m;
		variable delay:integer range 0 to n+50;--���ݿ�����ɺ����ʱ��������Ϊ�й����ź�ʱ��delay�ӷ�����Ϊ50������delay������Ϊn+50��ֹ���
	begin
		if rst='0' then
			state:=c0; count<=0; direction<=d0; pre_step<=s0; mark:=m; delay:=0; en<='1';
		elsif rising_edge(clk2) then
			case state is
			when c0=>
				mark:=m; count<=0; pre_step<=s0; 
				if door='0' then
					state:=c0; direction<=d0; en<='1'; delay:=0;
				elsif door='1' then
					en<='0';
					if delay=n/2 then
						state:=c1; direction<=d1; delay:=0;
					else
						delay:=delay+1; state:=c0; direction<=d0;
					end if;
				end if;
			when c1=> 
				delay:=0; en<='0';
				if count=target-1 then
					count<=count+1; state:=c1; direction<=d1; pre_step<=next_step; mark:=target;
				elsif count=mark then
					count<=0; state:=c3; direction<=d0; pre_step<=s0; mark:=m;
				else
					count<=count+1; state:=c1; direction<=d1; pre_step<=next_step; mark:=m;
				end if;
			when c2=>
				delay:=0;
				if (overweight='1' or key_open='0') and count/=target then
					count<=0; state:=c1; direction<=d1; pre_step<=s0; mark:=m; en<='0';
				elsif count<=target-1 then
					count<=count+1; state:=c2; direction<=d2; pre_step<=next_step; mark:=target; en<='0';
				elsif count=mark then
					count<=0; state:=c0; direction<=d0; pre_step<=s0; mark:=m; en<='1';
				else
					count<=count+1; state:=c2; direction<=d2; pre_step<=next_step; mark:=m; en<='0';
				end if;
			when c3=>
				count<=0; pre_step<=s0; mark:=m; en<='0';
				if (overweight='1' or key_open='0') then
					delay:=0; direction<=d0; state:=c3;
				elsif delay>=n then
					delay:=0; direction<=d2; state:=c2;
				elsif key_close='0' then
					delay:=delay+50; direction<=d0; state:=c3;
				else
					delay:=delay+1; direction<=d0; state:=c3;
				end if;
			end case;
		end if;
	end process;		

	process(clk1,rst)--�ý����������¼���Ŀ��ֵ
	begin
		if rst='0' then
			target<=n+1;
		elsif rising_edge(clk1) and door='1' then
			if (overweight='1' or key_open='0') and direction=d2 and count/=target then
			--�ɹ���״̬��;ת��Ϊ����״̬���������г����źŻ��п����ź�
				target<=count+1;
			elsif count=target then
				target<=n+1;
			else 
				target<=target;
			end if;
		end if;
	end process;

	process(pre_step)
	begin
		case pre_step is
		when s0=>
			y<="0000";
			if direction=d1 then
				next_step<=s1;
			elsif direction=d2 then
				next_step<=s8;
			else
				next_step<=s0;
			end if;
		when s1=>
			y<="0001";
			if direction=d1 then
				next_step<=s2;
			elsif direction=d2 then
				next_step<=s8;
			else
				next_step<=s0;
			end if;
		when s2=>
			y<="0011";
			if direction=d1 then
				next_step<=s3;
			elsif direction=d2 then
				next_step<=s1;
			else
				next_step<=s0;
			end if;
		when s3=>
			y<="0010";
			if direction=d1 then
				next_step<=s4;
			elsif direction=d2 then
				next_step<=s2;
			else
				next_step<=s0;
			end if;
		when s4=>
			y<="0110";
			if direction=d1 then
				next_step<=s5;
			elsif direction=d2 then
				next_step<=s3;
			else
				next_step<=s0;
			end if;
		when s5=>
			y<="0100";
			if direction=d1 then
				next_step<=s6;
			elsif direction=d2 then
				next_step<=s4;
			else
				next_step<=s0;
			end if;
		when s6=>
			y<="1100";
			if direction=d1 then
				next_step<=s7;
			elsif direction=d2 then
				next_step<=s5;
			else
				next_step<=s0;
			end if;
		when s7=>
			y<="1000";
			if direction=d1 then
				next_step<=s8;
			elsif direction=d2 then
				next_step<=s6;
			else
				next_step<=s0;
			end if;
		when s8=>
			y<="1001";
			if direction=d1 then
				next_step<=s1;
			elsif direction=d2 then
				next_step<=s7;
			else
				next_step<=s0;
			end if;
		end case;
	end process;
end behav;