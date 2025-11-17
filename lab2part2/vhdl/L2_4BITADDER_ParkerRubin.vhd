-- L2_4BITADDER_ParkerRubin.vhd
-- Parker Rubin
-- Lab2 
library ieee;
use ieee.std_logic_1164.all;
use work.Nands_Lab2.all;

entity L2_4BITADDER_ParkerRubin is
  port(
    A, B : in  std_logic_vector(3 downto 0);
    Cin  : in  std_logic;
    S    : out std_logic_vector(3 downto 0);
    Cout : out std_logic
  );
end entity;

architecture rtl of L2_4BITADDER_ParkerRubin is
  signal c : std_logic_vector(4 downto 0);
begin
  c(0) <= Cin;

  FA0 : Lab2_FullAdder_ParkerRubin port map (A(0), B(0), c(0), S(0), c(1));
  FA1 : Lab2_FullAdder_ParkerRubin port map (A(1), B(1), c(1), S(1), c(2));
  FA2 : Lab2_FullAdder_ParkerRubin port map (A(2), B(2), c(2), S(2), c(3));
  FA3 : Lab2_FullAdder_ParkerRubin port map (A(3), B(3), c(3), S(3), c(4));

  Cout <= c(4);
end architecture;