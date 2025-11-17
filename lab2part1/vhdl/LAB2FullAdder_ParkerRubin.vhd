-- Full Adder by Parker Rubin
-- LAB2 Thursday Assignment
LIBRARY ieee;

USE ieee.std_logic_1164.ALL
;

ENTITY LAB2FullAdder_ParkerRubin IS
 PORT (A, B, Cin     : IN  STD_LOGIC;
       Cout, Sum     : OUT STD_LOGIC);
END LAB2FullAdder_ParkerRubin;

ARCHITECTURE Structure OF LAB2FullAdder_ParkerRubin IS
 COMPONENT HalfAdder_ParkerRubin
  PORT (A, B          : IN  STD_LOGIC;
        Cout, Sum     : OUT STD_LOGIC);
 END COMPONENT;

 SIGNAL S1, C1, C2 : STD_LOGIC;
BEGIN -- Half Adders and NAND OR
 HA1: HalfAdder_ParkerRubin
  PORT MAP (A => A,
            B => B,
            Cout => C1,
            Sum => S1);

 HA2: HalfAdder_ParkerRubin
  PORT MAP (A => S1,
            B => Cin,
            Cout => C2,
            Sum => Sum);

 Cout <= (C1 NAND C1) NAND (C2 NAND C2); -- Nand of Or
END Structure;
