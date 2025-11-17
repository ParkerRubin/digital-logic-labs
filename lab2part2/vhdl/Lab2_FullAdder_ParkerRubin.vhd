-- Lab2_FullAdder_ParkerRubin
-- By Parker Rubin

library ieee;
use ieee.std_logic_1164.all;
use work.Nands_Lab2.all;

entity Lab2_FullAdder_ParkerRubin is
  port (
    A, B, Cin : in  std_logic; -- inputs (3)
    S, Cout   : out std_logic  -- sum and carry outputs
  );
end Lab2_FullAdder_ParkerRubin;

architecture Structure of Lab2_FullAdder_ParkerRubin is
  signal n1, n2, n3, AxorB : std_logic;
  signal n4, n5, n6        : std_logic;
  signal AB_n, AC_n, BC_n  : std_logic;
begin
  -- XOR(A,B) w nand
  n1    <= A nand B;
  n2    <= A nand n1;
  n3    <= B nand n1;
  AxorB <= n2 nand n3;

  -- S output
  -- Xor + cin w nands
  n4 <= AxorB nand Cin;
  n5 <= AxorB nand n4;
  n6 <= Cin   nand n4;
  S  <= n5 nand n6;

  -- Cout 
  -- AB ACin BCin 
  AB_n <= A nand B;
  AC_n <= A nand Cin;
  BC_n <= B nand Cin;

  CoutGen : NAND3LAB2_ParkerRubin
    port map (A => AB_n, B => AC_n, C => BC_n, X => Cout);
end Structure;