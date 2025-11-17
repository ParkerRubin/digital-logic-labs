-- 2-to-1 Multiplexer
-- By Parker Rubin

-- Part 1 - Include the necessary libraries
library ieee;
use ieee.std_logic_1164.all;

-- Part 2 - Define ENTITY (external ports/connections)
entity Mux2to1_ParkerRubin is
  port (
    X0, X1 : in  std_logic;  -- Data inputs
    S      : in  std_logic;  -- Select input
    Y      : out std_logic   -- Output
  );
end entity Mux2to1_ParkerRubin;

-- Part 3 - Define ARCHITECTURE (guts of the circuit)
architecture structure of Mux2to1_ParkerRubin is
begin
  -- Equation: Y = (X0 AND NOT S) OR (X1 AND S)
  Y <= (X0 and (not S)) or (X1 and S);
end architecture structure;
