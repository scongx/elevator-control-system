library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity logic is
generic(m:natural:=100000000;--m:ģ�����ͨ��һ������ʱ��Ϊ2s
		thr:natural:=25000000);--thr:�ٶ����ݴ����е�ֹͣ������Ҫ��ʱ��Ϊ0.5s
port(clk:in std_logic;
	rst:in std_logic;
	door:out std_logic;--���ʹ��
	en:in std_logic;--���ģ�鷴���źţ�1��ʾ������ɣ����ݿ���ת��״̬
	num:buffer integer range 0 to 3;--��ǰ��ʾ¥��
	direction:buffer integer range 0 to 2;--�����źţ�0�����޷���1�������ϣ�2��������
	key_input:in std_logic_vector(6 downto 0)
);
end logic;

architecture behav of logic is
	signal stop:std_logic;--0����������У�1�������ֹͣ��ֹͣʱ��ʱ�����ܼ�ʱ
	alias key:std_logic_vector(2 downto 0)is key_input(6 downto 4);--�����ڲ������źţ�һ������Ϊ0
	alias key_up:std_logic_vector(1 downto 0)is key_input(3 downto 2);--�������ϰ����źţ�һ������Ϊ0
	alias key_down:std_logic_vector(1 downto 0)is key_input(1 downto 0);--�������°����źţ����ϲ�����Ϊ1
	signal key_latch:std_logic_vector(2 downto 0);
	signal up_latch:std_logic_vector(1 downto 0);
	signal down_latch:std_logic_vector(1 downto 0);
	signal cnt:integer range 0 to m;
	signal floor:integer range 0 to 3;--��һ��Ҫȥ����¥�㣬0����û��¥��Ҫȥ
begin
	process(clk,rst)--ģ������ʱ��	
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
	
	process(clk,rst)--�Ĵ����ļ����ź�
	begin
		if rst='0' then
			key_latch<="111";
			up_latch<="11";
			down_latch<="11";
		elsif rising_edge(clk) then
			if num=1 and floor=1 then
				key_latch(0)<='1';--����Ŀ��¥��󣬻ָ���ֵ
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
			
	process(clk,rst)--״̬ת��
		type state_type is(s0,s1,s2,s3);--s0����ֹͣ��s1�������У�s2�������У�s3�������ڿ��Ż����
		variable state:state_type;
	begin
		if rst='0' then
			direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
		elsif rising_edge(clk) then
			case state is
				when s0=>
					if num=1 then --����ͣ�ڵ�һ��
						if up_latch(0)='0' or key_latch(0)='0' then --һ���п��������ź�
							direction<=1; door<='1'; stop<='1'; floor<=1; state:=s3;
						elsif up_latch(1)='0' or down_latch(0)='0' or key_latch(1)='0' then --��ǰ����¥�������ź�
							direction<=1; door<='0'; stop<='0'; floor<=2; state:=s1;
						elsif down_latch(1)='0' or key_latch(2)='0' then --��ǰ����¥�������ź�
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						else --�޶���
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					elsif num=2 then --����ͣ�ڵڶ���
						if up_latch(1)='0' then --���Ե����ⲿ���ϰ����Ŀ��������ź�
							direction<=1; door<='1'; stop<='1'; floor<=2; state:=s3;
						elsif down_latch(0)='0' or key_latch(1)='0' then --���Ե����ⲿ���°���������ڲ���¥�Ŀ��������ź�
							direction<=2; door<='1'; stop<='1'; floor<=2; state:=s3;
						elsif up_latch(0)='0' or key_latch(0)='0' then --��ǰ��һ¥�������ź�
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						elsif down_latch(1)='0' or key_latch(2)='0' then --��ǰ����¥�������ź�
							direction<=1; door<='0'; stop<='0'; floor<=3; state:=s1;
						else --�޶���
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					elsif num=3 then --����ͣ�ڵ�����
						if down_latch(1)='0' or key_latch(2)='0' then --�����п��������ź�
							direction<=2; door<='1'; stop<='1'; floor<=3; state:=s3;
						elsif up_latch(1)='0' or down_latch(0)='0' or key_latch(1)='0' then --��ǰ����¥�������ź�
							direction<=2; door<='0'; stop<='0'; floor<=2; state:=s2;
						elsif up_latch(0)='0' or key_latch(0)='0' then --��ǰ��һ¥�������ź�
							direction<=2; door<='0'; stop<='0'; floor<=1; state:=s2;
						else --�޶���
							direction<=0; door<='0'; stop<='1'; floor<=0; state:=s0;
						end if;
					end if;
				when s1=> --��������
					if num=1 then 
						if ((key(1)='0' or key_up(1)='0') and cnt>thr) then --�����;�ж�¥�����źţ��ж��������ü�ͣ��������һ������
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
					elsif num=3 then --�Ѿ����е��˵����㣬�ı䷽�򣬽��뵽������״̬
						direction<=2; door<='1'; stop<='1'; floor<=3; state:=s3;
					end if;
				when s2=> --��������
					if num=3 then
						if ((key(1)='0' or key_down(0)='0') and cnt>thr) then --�����;�ж�¥�����źţ��ж��������ü�ͣ��������һ������
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
					if en='0' then --������ڹ����Ļ�������״̬�������if������ھ������ݵ���һ��Ŀ��¥����˶�����
						door<='1'; stop<='1'; state:=s3;
						if num=1 then
							if key_latch(0)='0' or up_latch(0)='0' then
								direction<=1; floor<=1; --num=floor��latch�ָ��ߵ�ƽ
							elsif key_latch(1)='0' or up_latch(1)='0' then
								direction<=1; floor<=2;
							elsif key_latch(2)='0' or down_latch(1)='0' then
								direction<=1; floor<=3;
							elsif down_latch(0)='0' then --�������ڴ��ڵײ㣬��¥���µ��������ȼ���С�����Է��ں���
								direction<=1; floor<=2;
							else 
								direction<=1; floor<=0;
							end if;
						elsif num=2 then 
							if direction=1 then
								if key_latch(1)='0' or up_latch(1)='0' then
									direction<=1; floor<=2; --num=floor��latch�ָ��ߵ�ƽ
								elsif key_latch(2)='0' or down_latch(1)='0' then
									direction<=1; floor<=3;
								else
									direction<=1; floor<=0;
								end if;
							elsif direction=2 then
								if key_latch(1)='0' or down_latch(0)='0' then
									direction<=2; floor<=2; --num=floor��latch�ָ��ߵ�ƽ
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
							elsif up_latch(1)='0' then --�������ڴ��ڶ��㣬��¥���ϵ��������ȼ���С�����Է��ں���
								direction<=2; floor<=2;
							else
								direction<=2; floor<=0;
							end if;
						end if;
					elsif en='1' then --���ֹͣ
						if num=floor then --��������ǵ��ݱ�������s0ֹͣ״̬�������յ��������ź�
							direction<=direction; door<='1'; stop<='1'; floor<=floor; state:=s3;
						elsif floor=0 then --����Ѿ�����˿��������񣬲���Ҳû���ⲿ�����źţ����ǽ���s0ֹͣ״̬
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