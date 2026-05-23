library IEEE;
use ieee.std_logic_1164.all;

-- Πύλη xor --
entity xor_gate is
	port(in1: in std_logic;
		  in2: in std_logic;
		  out1: out std_logic);
end xor_gate;

architecture behavioral of xor_gate is
begin
	out1 <= in1 xor in2;
end behavioral;