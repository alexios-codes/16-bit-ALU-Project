library IEEE;
use ieee.std_logic_1164.all;

-- Πολυπλέκτης 2 σε 1 --
entity mul2in1 is 
	port(in1: in std_logic;
		  in2: in std_logic;
		  op: in std_logic;
		  out1: out std_logic);
end mul2in1;

architecture behavioral of mul2in1 is
begin
	out1 <= in1 when op ='0' else in2;
end behavioral;