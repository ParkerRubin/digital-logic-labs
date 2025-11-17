-- 2 to 1 Mux
-- By Parker Rubin
-- Part 1
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- Part 2
ENTITY Mux2to1_ParkerRubin IS
PORT (
    S, I1, I0 : IN STD_LOGIC;  -- S = selector, selects I0 if 0, I1 otherwise
    Y         : OUT STD_LOGIC
);
END Mux2to1_ParkerRubin;

-- Part 3
ARCHITECTURE structure OF Mux2to1_ParkerRubin IS
    SIGNAL SNot, w1, w2 : STD_LOGIC;
BEGIN
    SNot <= NOT S;           -- S'
    w1   <= SNot AND I0;     -- S'I0
    w2   <= S AND I1;        -- SI1
    Y    <= w1 OR w2;        -- output is S'I0 + SI1
END structure;
