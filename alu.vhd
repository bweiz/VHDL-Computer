library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;


entity ALU is    
   port (A, B 	   : in std_logic_vector (7 downto 0);
	 ALU_Sel   : in std_logic_vector (2 downto 0);
	 Result	   : out std_logic_vector (7 downto 0);
	 NZVC	   : out std_logic_vector (3 downto 0));    
end entity;


architecture alu_arch of alu is
   
   signal In1        : std_logic_vector (7 downto 0);
   signal In2        : std_logic_vector (7 downto 0);
   signal ALU_Result : std_logic_vector (7 downto 0);
   signal BUS1       : std_logic_vector (7 downto 0);
   signal CCR        : std_logic_vector (3 downto 0);
   signal Bus2_Sel   : std_logic_vector (7 downto 0);
  begin
   
   NZVC       <= CCR;
   ALU_Result <= Bus2_Sel;
   In1        <= B;
   In2        <= BUS1;

end architecture;