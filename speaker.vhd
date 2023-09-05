library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity speaker is
generic(k:integer:=100);--ÿ֡100bit
port(clk:in std_logic;
	rst:in std_logic;
	door:in std_logic;
	num:in integer range 0 to 3;
	busy:in std_logic;--�͵�ƽ��ʾоƬ���У����Խ�����λ�����͵���������ݣ� �ߵ�ƽ��ʾоƬ��æ�����ڽ��������ϳɺͲ���������
	rxd:in std_logic;--�������ݽ��ն�
	txd:out std_logic;--�������ݷ��Ͷ�
	led:out std_logic--
);
end speaker;
architecture behav of speaker is
	signal clk_s:std_logic;
begin
	process(clk,rst)--�ý������ڲ���9600bps�Ĳ�����
		variable count:integer range 0 to 2604;
	begin
		if(rst='0')then
			count:=0;
			clk_s<='0';
		elsif rising_edge(clk)then
			count:=count+1;
			if count=2603 then--2603
				clk_s<=not clk_s;
				count:=0;
			end if;
		end if;
	end process;
	
	process(clk_s,rst)
		type state_type is(s0,s1,s2);
		--s0Ϊ׼��״̬
		variable state:state_type;
		variable head:std_logic_vector(9 downto 0);--֡ͷ
		variable len_h:std_logic_vector(9 downto 0);--���������ȸ��ֽ�
		variable len_l:std_logic_vector(9 downto 0);--���������ȵ��ֽ�
		variable com_word:std_logic_vector(9 downto 0);--������
		variable com_par:std_logic_vector(9 downto 0);--�������
		variable list1:std_logic_vector(39 downto 0);--�ı�1
		variable list2:std_logic_vector(39 downto 0);--�ı�2
		variable list3:std_logic_vector(39 downto 0);--�ı�3
		variable parity:std_logic_vector(9 downto 0);--У��λ
		variable list_s:std_logic_vector(7 downto 0);--�յ���ȷ������֡
		variable list_f:std_logic_vector(7 downto 0);--�յ�����ʶ������֡
		variable data:std_logic_vector(99 downto 0);--���͵�����֡
		variable cnt:integer range 0 to 100;
	begin
		if rst='0' then
			state:=s0;
			head:="0101111111";--֡ͷ��ʼ��Ϊ0xfd
			len_h:="0000000001";--���������ȸ��ֽ�Ϊ0
			len_l:="0111000001";--���������ȵ��ֽ�Ϊ7������4���ֽڣ�4+3=7��
			com_word:="0100000001";--������ȡ0x01����Ӧ�����ϳɲ�������
			com_par:="0100000001";--�������ȡ0x00����Ӧ�ޱ�������
			list1:="0010010111011011101100100001110101001011";--��һ¥��
			list2:="0011011011001111111100100001110101001011";--����¥��
			list3:="0000100111010111111100100001110101001011";--����¥��
			parity:="0000000001";--У��λ��ʼ��Ϊȫ0
			list_s:="10000010";--�յ���ȷ������֡�ش�0x41
			list_f:="10100010";--�յ�����ʶ������֡�ش�0x45
			data:=(others=>'0');
			cnt:=k;
			txd<='1';
			led<='1';
		elsif rising_edge(clk_s) then
			if busy='0' then
			led<='0';
			else
			led<='1';
			end if;
			head:=head; 
			len_h:=len_h; len_l:=len_l; 
			com_word:=com_word; com_par:=com_par; 
			list1:=list1; list2:=list2; list3:=list3; 
			parity:=parity;
			data:=data;
			list_s:=list_s; list_f:=list_f;
			case state is
				when s0=> --׼��״̬
					cnt:=k; 
					txd<='1';
					if door='1' and num=1 and busy='0' then 
						parity:="0001011111";--���У����Ϊf4
						data:=head & len_h & len_l & com_word & com_par & list1 & parity;
						state:=s1;
					elsif door='1' and num=2 and busy='0' then
						parity:="0101010111";--���У����Ϊd5
						data:=head & len_h & len_l & com_word & com_par & list2 & parity;
						state:=s1;
					elsif door='1' and num=3 and busy='0' then
						parity:="0000101011";--���У����Ϊa8
						data:=head & len_h & len_l & com_word & com_par & list3 & parity;
						state:=s1;
					else 
						data:=(others=>'0');
						state:=s0;
					end if;
				when s1=> --����״̬
					txd<=data(cnt-1);
					cnt:=cnt-1;
					if cnt=0 then
						cnt:=k;
						state:=s2;
					else
						state:=s1;
					end if;
				when s2=> --����״̬��txd�ź�������
					txd<='1';
					cnt:=k;
					if door='0' then
						state:=s0;
					else
						state:=s2;
					end if;
			end case;
		end if;
	end process;
end behav;