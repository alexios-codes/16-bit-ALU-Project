library IEEE;
use ieee.std_logic_1164.all;

-- Πύλη and --
entity and_gate is 
    port (in1: in std_logic;
            in2: in std_logic; 
            out1 : out std_logic);
end and_gate;

architecture behavioral of and_gate is
begin
    out1 <= in1 and in2;
end behavioral;