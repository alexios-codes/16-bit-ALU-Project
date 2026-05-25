library IEEE;
use ieee.std_logic_1164.all;

-- Πύλη or --
entity or_gate is
    port(    in1: in std_logic;
            in2: in std_logic;
            out1: out std_logic);
end or_gate;

architecture behavioral of or_gate is
begin
    out1 <= in1 or in2;
end behavioral;