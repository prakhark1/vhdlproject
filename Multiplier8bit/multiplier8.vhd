
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;



entity multiplier8 is
    Port ( a : in  STD_LOGIC_VECTOR(7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           pro : inout  STD_LOGIC_VECTOR(16 downto 0));
end multiplier8;

architecture Behavioral of multiplier8 is
Component pa17bit is 
port ( a : in  STD_LOGIC_VECTOR( 16 downto 0);
           b : in  STD_LOGIC_VECTOR( 16 downto 0);
           sum : out  STD_LOGIC_VECTOR( 16 downto 0));
end component;	
 
begin

process( a,b)

variable var : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var1 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var2: STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var3 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var4 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var5 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var6 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');
variable var7 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');

variable var8 : STD_LOGIC_VECTOR (16 downto 0):= (others=>'0');


begin



if (b(0)='1') then
    for i in 0 to 7 loop 
	 var(i):= a(i);
	 
	 end loop;
	 w0 : pa17bit (var , var8 , var8);
	 end if;

  if (b(1)='1') then
    for i in 0 to 7 loop 
	 var1(i+1):= a(i);
	 
	 end loop;
	 w1 : pa17bit (var1 , var8 , var8);
	 end if;
	 if (b(2)='1') then
    for i in 0 to 7 loop 
	 var2(i+2):= a(i);
	 
	 end loop;
	 w2 : pa17bit (var2 , var8 , var8);
	 end if;
	 if (b(3)='1') then
    for i in 0 to 7 loop 
	 var3(i+3) :=a(i);
	 
	 end loop;
	 w3 : pa17bit (var3 , var8 , var8);
	 end if;
	 if (b(4)='1') then
    for i in 0 to 7 loop 
	 var4(i+4):= a(i);
	 
	 end loop;
	 w4 : pa17bit (var4 , var8 , var8);
	 end if;
	 if (b(5)='1') then
    for i in 0 to 7 loop 
	 var5(i+5):= a(i);
	 
	 end loop;
	 w5 : pa17bit (var5 , var8 , var8);
	 end if;
	 if (b(6)='1') then
    for i in 0 to 7 loop 
	 var6(i+6):= a(i);
	 
	 end loop;
	 w6 : pa17bit (var6 , var8 , var8);
	 end if;
	 if (b(7)='1') then
    for i in 0 to 7 loop 
	 var7(i+7):= a(i);
	 
	 end loop;
	 w7 : pa17bit (var7 , var8 , var8);
	 end if;
	 

 
       
 
 end process;				 

end Behavioral;

