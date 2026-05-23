library IEEE;
use ieee.std_logic_1164.all;

-- Πολυπλέκτης 4 σε 1 --
entity mul4in1 is
	port(and_gate, or_gate, sum, xor_gate: in std_logic;
		  op: in std_logic_vector(1 downto 0);
		  out1: out std_logic);
end mul4in1;

architecture behavioral of mul4in1 is
begin
	with op select -- Επιλογή ανάλογα με το bit επιλογής (operation bit) -- 
		out1 <= and_gate when "00",
				  or_gate when "01",
				  sum when "10",
				  xor_gate when "11",
				  '0' when others;
end behavioral;