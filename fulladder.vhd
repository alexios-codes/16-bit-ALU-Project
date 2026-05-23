library IEEE;
use ieee.std_logic_1164.all;

-- Πλήρης αθροιστής (3,2) --
entity fulladder is 
	port(in1, in2, cin: in std_logic;
		  sum, cout: out std_logic);
end fulladder;

architecture behavioral of fulladder is
begin
	sum <= in1 xor in2 xor cin;
	cout <= (in1 and in2) or (in1 and cin) or (in2 and cin);
end behavioral;
