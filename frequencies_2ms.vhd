library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frequencies_2ms is
	generic(n:integer:=50000);
	port(clk:in std_logic;
		rst_n:in std_logic;
		y:buffer std_logic);
end frequencies_2ms;

architecture behav of frequencies_2ms is
	signal cnt:integer range 0 to n;
begin
	process(clk,rst_n)
	begin
		if(rst_n = '0')then
			cnt<=0;
			y<='0';
		elsif rising_edge(clk)then
			cnt<=cnt+1;
			if cnt = n then
				y<=not y;
				cnt<=0;
			end if;
		end if;
	end process;
end behav;