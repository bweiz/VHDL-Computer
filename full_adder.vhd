library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
   port (A, B, Cin    : in std_logic;
	 S, Cout : out std_logic);
end entity;

architecture full_adder_arch of full_adder is

   component half_adder is
      port (A, B     : in std_logic;
 	    S, Cout  : out std_logic);
   end component;

   signal HA1_S, HA1_Cout, HA2_Cout : std_logic;

  begin
   HA1 : half_adder port map (A, B, HA1_S, HA1_Cout);
   HA2 : half_adder port map (HA1_S, Cin, S, HA2_Cout);

   Cout <= HA1_Cout or HA2_Cout after 1 ns;

end architecture;