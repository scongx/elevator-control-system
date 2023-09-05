LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY keyboard is
PORT(clk,din1,din2,din3,dina,dinb,dinc,dind : in std_logic;
		Q: out std_logic_vector(6 downto 0));
END ENTITY;
ARCHITECTURE Behav OF keyboard IS
signal count1,count2,count3,counta,countb,countc,countd:integer range 0 to 50000000;
signal dou1,dou2,dou3,doua,doub,douc,doud:std_logic;
BEGIN

xid:process(clk)
begin
if(clk'event and clk='1') then

if(din1='0') then
count1<=count1+1;
if(count1=1000000) then
dou1<='0';
else
dou1<='1';
end if;

elsif(din2='0') then
count2<=count2+1;
if(count2=1000000) then
dou2<='0';
else
dou2<='1';
end if;

elsif(din3='0') then
count3<=count3+1;
if(count3=1000000) then
dou3<='0';
else
dou3<='1';
end if;

elsif(dina='0') then
counta<=counta+1;
if(counta=1000000) then
doua<='0';
else
doua<='1';
end if;

elsif(dinb='0') then
countb<=countb+1;
if(countb=1000000) then
doub<='0';
else
doub<='1';
end if;

elsif(dinc='0') then
countc<=countc+1;
if(countc=1000000) then
douc<='0';
else
douc<='1';
end if;

elsif(dind='0') then
countd<=countd+1;
if(countd=1000000) then
doud<='0';
else
doud<='1';
end if;

else
count1<=0;
count2<=0;
count3<=0;
counta<=0;
countb<=0;
countc<=0;
countd<=0;
dou1<='1';
dou2<='1';
dou3<='1';
doua<='1';
doub<='1';
douc<='1';
doud<='1';

end if;
end if;
end process;


com:PROCESS(clk,dou1,dou2,dou3,doua,doub,douc,doud)
BEGIN
Q<=dou3&dou2&dou1&doub&doua&doud&douc;
END PROCESS;
END Behav;
