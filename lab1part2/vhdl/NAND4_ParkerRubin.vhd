-- 4-Input NAND using only 2-input NAND gates
-- Parker Rubin

-- Part 1 - Include libraries
library ieee;
use ieee.std_logic_1164.all;

-- Part 2 - Define ENTITY (circuit name must be "c")
entity c is
  port (
    X0, X1, X2, X3 : in  std_logic;
    Y              : out std_logic
  );
end entity c;

-- Part 3 - Define ARCHITECTURE (using only NANDs)
architecture structure of c is
  -- internal signals
  signal n01, ab, n23, cd : std_logic;
begin
  -- NAND + self-NAND to make AND for (X0 and X1)
  n01 <= X0 nand X1;      -- ~(X0·X1)
  ab  <= n01 nand n01;    -- (X0·X1)

  -- NAND + self-NAND to make AND for (X2 and X3)
  n23 <= X2 nand X3;      -- ~(X2·X3)
  cd  <= n23 nand n23;    -- (X2·X3)

  -- Final NAND: ~( (X0·X1) · (X2·X3) )
  Y <= ab nand cd;
end architecture structure;
