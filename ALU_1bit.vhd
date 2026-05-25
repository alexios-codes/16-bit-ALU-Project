library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ALU ενός bit --
entity alu_1bit is
    port(a, b, ainvert, binvert, alu_cin: in std_logic;
          alu_op: in std_logic_vector(1 downto 0);
          alu_cout, alu_result: out std_logic);
end alu_1bit;

architecture structural of alu_1bit is
-- Components --
component and_gate is
    port(in1, in2: in std_logic;
          out1: out std_logic);
end component;

component or_gate is
    port(in1, in2: in std_logic;
          out1: out std_logic);
end component;

component xor_gate is
    port(in1, in2: in std_logic;
         out1: out std_logic);
end component;

component inverter is
    port(in1: in std_logic;
          out1: out std_logic);
end component;

component fulladder is
    port(in1, in2, cin: in std_logic;
          sum, cout: out std_logic);
end component;

component mul2in1 is 
    port(in1, in2, op: in std_logic;
          out1: out std_logic);
end component;

component mul4in1 is
    port(and_gate, or_gate, sum, xor_gate: in std_logic;
          op: in std_logic_vector(1 downto 0);
          result: out std_logic);
end component;

-- Σήματα --
signal Sa: std_logic;
signal Sb: std_logic;
signal Sainvert: std_logic;
signal Sbinvert: std_logic;
signal Sand: std_logic;
signal Sor: std_logic;
signal Sfulladder: std_logic;
signal Sxor: std_logic;

-- Port mapping --
begin
    U0: inverter port map(in1 => a, out1 => Sainvert);
    U1: inverter port map(in1 => b, out1 => Sbinvert);
    U2: mul2in1 port map(in1 => a, in2 => Sainvert, op => ainvert, out1 => Sa);
    U3: mul2in1 port map(in1 => b, in2 => Sbinvert, op => binvert, out1 => Sb);
    U4: and_gate port map(in1 => Sa, in2 => Sb, out1 => Sand);
    U5: or_gate port map(in1 => Sa, in2 => Sb, out1 => Sor);
    U6: fulladder port map(in1 => Sa, in2 => Sb, cin => alu_cin, cout => alu_cout, sum => Sfulladder);
    U7: xor_gate port map(in1 => Sa, in2 => Sb, out1 => Sxor);
    U8: mul4in1 port map(and_gate => Sand, or_gate => Sor, sum => Sfulladder, xor_gate => Sxor, op => alu_op, result => alu_result); 
end structural;