-- L2_8BITADDER_ParkerRubin
-- By Parker Rubin

library ieee;
use ieee.std_logic_1164.all;
use work.Nands_Lab2.all;

entity L2_8BITADDER_ParkerRubin is
  port(
    A, B : in  std_logic_vector(7 downto 0);
    Cin  : in  std_logic;
    S    : out std_logic_vector(7 downto 0);
    Cout : out std_logic
  );
end L2_8BITADDER_ParkerRubin;

architecture Structure of L2_8BITADDER_ParkerRubin is
  signal c4 : std_logic;
begin
  LowerAdder : L2_4BITADDER_ParkerRubin port map (
    A(3 downto 0), B(3 downto 0), Cin, S(3 downto 0), c4
  );

  UpperAdder : L2_4BITADDER_ParkerRubin port map (
    A(7 downto 4), B(7 downto 4), c4, S(7 downto 4), Cout
  );
end Structure;