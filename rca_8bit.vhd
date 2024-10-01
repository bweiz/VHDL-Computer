library IEEE;
use IEEE.std_logic_1164.all;


entity rca_8bit is
   port   (A, B   : in std_logic_vector(7 downto 0);
	   S      : out std_logic_vector(7 downto 0);
	   Cout   : out std_logic);
end entity;

architecture rca_8bit_arch of rca_8bit is

   component full_adder is
      port (A, B, Cin    : in std_logic;
	    S, Cout : out std_logic);
   end component;
   
   signal C0, C1, C2, C3, C4, C5, C6 : std_logic;

  begin
   A0 : full_adder port map (A(0), B(0), '0', S(0), C0);
   A1 : full_adder port map (A(1), B(1), C0, S(1), C1);
   A2 : full_adder port map (A(2), B(2), C1, S(2), C2);
   A3 : full_adder port map (A(3), B(3), C2, S(3), C3);
   A4 : full_adder port map (A(4), B(4), C3, S(4), C4);
   A5 : full_adder port map (A(5), B(5), C4, S(5), C5);
   A6 : full_adder port map (A(6), B(6), C5, S(6), C6);
   A7 : full_adder port map (A(7), B(7), C6, S(7), Cout);

end architecture;