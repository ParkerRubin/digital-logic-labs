-- Lab2_FullAdder_ParkerRubin
-- By Parker Rubin
library ieee;
use ieee.std_logic_1164.all;

package Nands_Lab2 is

  component NAND3LAB2_ParkerRubin is
    port (
      A, B, C : in  std_logic;
      X       : out std_logic
    );
  end component;

  component NAND4LAB2_ParkerRubin is
    port (
      A, B, C, D : in  std_logic;
      X          : out std_logic
    );
  end component;

  component Lab2_FullAdder_ParkerRubin is
    port (
      A, B, Cin : in  std_logic;
      S, Cout   : out std_logic
    );
  end component;

  component L2_4BITADDER_ParkerRubin is
    port (
      A, B : in  std_logic_vector(3 downto 0);
      Cin  : in  std_logic;
      S    : out std_logic_vector(3 downto 0);
      Cout : out std_logic
    );
  end component;

  component L2_8BITADDER_ParkerRubin is
    port (
      A, B : in  std_logic_vector(7 downto 0);
      Cin  : in  std_logic;
      S    : out std_logic_vector(7 downto 0);
      Cout : out std_logic
    );
  end component;

end package Nands_Lab2;
