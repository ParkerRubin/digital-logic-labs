-- Lab2 4-Input NAND
-- By Parker Rubin

library ieee;
use ieee.std_logic_1164.all;

entity Lab2_NAND4_ParkerRubin is
    port (
        A, B, C, D : in  std_logic;
        X          : out std_logic
    );
end Lab2_NAND4_ParkerRubin;

architecture Structure of Lab2_NAND4_ParkerRubin is
    signal w1, w2, w3 : std_logic;
begin
    w1 <= A nand B;
    w2 <= w1 nand w1;    
    w3 <= w2 nand C;      
    X  <= w3 nand D;
    
end Structure;