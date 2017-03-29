library IEEE;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY mutiplier_tb IS
END mutiplier_tb;
 
ARCHITECTURE behavior OF mutiplier_tb IS 
 
 
    COMPONENT multiplier8
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         pro : INOUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

   signal pro : std_logic_vector(16 downto 0);
 
   BEGIN
 
   uut: multiplier8 PORT MAP (
          a => a,
          b => b,
          pro => pro
        );

   
 

   stim_proc: process
   begin		
      wait for 100 ns;	
      a <= "00000011";
      b <= "00000111";
      wait for 100 ns;

      
   end process;

END;
