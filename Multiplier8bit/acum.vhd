library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity acum is
    Port ( a : in  STD_LOGIC_VECTOR(7 downto 0);
           b : in  STD_LOGIC_VECTOR(7 downto 0);
           ac : out  STD_LOGIC_VECTOR(16 downto 0));
end acum;

architecture Behavioral of acum is
Component pa17bit is
port ( a : in  STD_LOGIC_VECTOR( 16 downto 0);
           b : in  STD_LOGIC_VECTOR( 16 downto 0);
           sum : out  STD_LOGIC_VECTOR( 16 downto 0));
end component;

Component
signal s : std_logic_vector (7 downto 0);

begin


end Behavioral;

