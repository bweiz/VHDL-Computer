library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
   port (A, B      : in std_logic;
	 S, Cout   : out std_logic);
end entity;

architecture half_adder_arch of half_adder is

  begin
   
   S <= A xor B after 1 ns;
   Cout <= A and B after 1 ns;

end architecture;

