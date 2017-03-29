
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity pa17bit is
    Port ( a : in  STD_LOGIC_VECTOR( 16 downto 0);
           b : in  STD_LOGIC_VECTOR( 16 downto 0);
           sum : out  STD_LOGIC_VECTOR( 16 downto 0));
end pa17bit;

architecture Behavioral of pa17bit is
Component fa is
      port (aFA : in STD_LOGIC; h
         bFA : in STD_LOGIC; 
         cinFA : in STD_LOGIC; 
         sumFA : out STD_LOGIC; 
         coutFA : out STD_LOGIC
      ); 
   end component;
	signal s : STD_LOGIC_VECTOR (15 downto 0); 
   signal temp: STD_LOGIC;
begin
temp <='0';
   u0 : fa port map (a(0),b(0),temp,sum(0),s(0)); 
   u1 : fa port map (a(1),b(1),s(0),sum(1),s(1)); 
   u2 : fa port map (a(2),b(2),s(1),sum(2),s(2));
   u3 : fa port map (a(3),b(3),s(2),sum(3),s(3));
   u4 : fa port map (a(4),b(4),s(3),sum(4),s(4)); 
   u5 : fa port map (a(5),b(5),s(4),sum(5),s(5)); 
   u6 : fa port map (a(6),b(6),s(5),sum(6),s(6));
   u7 : fa port map (a(7),b(7),s(6),sum(7),s(7));
	u8 : fa port map (a(8),b(8),s(7),sum(8),s(8)); 
   u9 : fa port map (a(9),b(9),s(8),sum(9),s(9)); 
   u10 : fa port map (a(10),b(10),s(9),sum(10),s(10));
   u11 : fa port map (a(11),b(11),s(10),sum(11),s(11));
	u12 : fa port map (a(12),b(12),s(11),sum(12),s(12));
	u13 : fa port map (a(13),b(13),s(12),sum(13),s(13)); 
   u14 : fa port map (a(14),b(14),s(13),sum(14),s(14));
   u15 : fa port map (a(15),b(15),s(14),sum(15),s(15));
	ue : fa port map (a(16),b(16),s(15),sum(16),temp);


end Behavioral;

