-- Lab2 3-Input NAND
-- By Parker Rubin

library ieee;
use ieee.std_logic_1164.all;

entity NAND3LAB2_ParkerRubin is
    port (
        A, B, C : in  std_logic;
        X       : out std_logic
    );
end NAND3LAB2_ParkerRubin;

architecture Structure of NAND3LAB2_ParkerRubin is
    signal w1, w2 : std_logic;
begin
    w1 <= A nand B;
    w2 <= w1 nand w1;
    X  <= w2 nand C;
end Structure;
