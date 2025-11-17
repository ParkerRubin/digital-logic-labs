-- Half Adder by Parker Rubin
-- LAB2 Thursday Assignment
LIBRARY ieee;

USE Ieee.std_logic_1164.ALL
;

ENTITY HalfAdder_ParkerRubin IS
 PORT (A, B          : IN STD_LOGIC;
      Cout, Sum : OUT STD_LOGIC);
END HalfAdder_ParkerRubin;

ARCHITECTURE Structure OF HalfAdder_ParkerRubin IS
 SIGNAL N1, N2, N3 : STD_LOGIC;
BEGIN -- Nand
 N1  <= A NAND B;
 N2  <= A NAND N1;
 N3  <= B NAND N1;
 Sum <= N2 NAND N3; --xor
 Cout <= N1 NAND N1; --and

End Structure;