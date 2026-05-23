library IEEE;
use ieee.std_logic_1164.all;

-- Αντιστροφή bits, για την αφαίρεση --
entity inverter is
	port(in1: in std_logic;
		  out1: out std_logic);
end inverter;

architecture behavioral of inverter is
begin
	out1 <= not in1;
end behavioral;