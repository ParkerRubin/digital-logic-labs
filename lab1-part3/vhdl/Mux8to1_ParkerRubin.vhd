-- 8 to 1 Mux
-- By Parker Rubin

-- Part 1
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- Part 2
ENTITY Mux8to1_ParkerRubin IS
PORT (
    S2, S1, S0 : IN STD_LOGIC;              -- three select lines
    I0, I1, I2, I3, I4, I5, I6, I7 : IN STD_LOGIC;  -- eight data inputs
    Y : OUT STD_LOGIC                        -- single output
);
END Mux8to1_ParkerRubin;

-- Part 3
ARCHITECTURE structure OF Mux8to1_ParkerRubin IS

    -- component declaration for 2-to-1 mux
    COMPONENT Mux2to1_ParkerRubin
    PORT (
        S, I1, I0 : IN STD_LOGIC;
        Y : OUT STD_LOGIC
    );
    END COMPONENT;

    -- first-stage outputs (pairwise select on S0)
    SIGNAL M0, M1, M2, M3 : STD_LOGIC;

    -- second-stage outputs (pairwise select on S1)
    SIGNAL N0, N1 : STD_LOGIC;

BEGIN

    -- Stage 1: use S0 to pick within each pair
    U0 : Mux2to1_ParkerRubin PORT MAP (S0, I1, I0, M0);
    U1 : Mux2to1_ParkerRubin PORT MAP (S0, I3, I2, M1);
    U2 : Mux2to1_ParkerRubin PORT MAP (S0, I5, I4, M2);
    U3 : Mux2to1_ParkerRubin PORT MAP (S0, I7, I6, M3);

    -- Stage 2: use S1 to pick between adjacent pairs
    U4 : Mux2to1_ParkerRubin PORT MAP (S1, M1, M0, N0);
    U5 : Mux2to1_ParkerRubin PORT MAP (S1, M3, M2, N1);

    -- Stage 3: use S2 to pick between halves with S2
    U6 : Mux2to1_ParkerRubin PORT MAP (S2, N1, N0, Y);

END structure;
