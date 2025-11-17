LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- Part 2
ENTITY Mux16to1_ParkerRubin IS
PORT (
    S3, S2, S1, S0 : IN STD_LOGIC;             -- four select lines
    I0, I1, I2, I3, I4, I5, I6, I7,
    I8, I9, I10, I11, I12, I13, I14, I15 : IN STD_LOGIC;  -- sixteen data inputs
    Y : OUT STD_LOGIC
);
END Mux16to1_ParkerRubin;

-- Part 3
ARCHITECTURE structure OF Mux16to1_ParkerRubin IS

    -- component declaration for 2-to-1 mux
    COMPONENT Mux2to1_ParkerRubin
    PORT (
        S, I1, I0 : IN STD_LOGIC;      -- S = selector, selects I0 if 0, I1 otherwise
        Y : OUT STD_LOGIC
    );
    END COMPONENT;

    -- first stage (pairwise with S0)
    SIGNAL M0, M1, M2, M3, M4, M5, M6, M7 : STD_LOGIC;

    -- second stage (between pairs with S1)
    SIGNAL N0, N1, N2, N3 : STD_LOGIC;

    -- third stage (between quads with S2)
    SIGNAL P0, P1 : STD_LOGIC;

BEGIN

    -- Stage 1: S0 selects within each adjacent pair
    U0  : Mux2to1_ParkerRubin PORT MAP (S0, I1,  I0,  M0);
    U1  : Mux2to1_ParkerRubin PORT MAP (S0, I3,  I2,  M1);
    U2  : Mux2to1_ParkerRubin PORT MAP (S0, I5,  I4,  M2);
    U3  : Mux2to1_ParkerRubin PORT MAP (S0, I7,  I6,  M3);
    U4  : Mux2to1_ParkerRubin PORT MAP (S0, I9,  I8,  M4);
    U5  : Mux2to1_ParkerRubin PORT MAP (S0, I11, I10, M5);
    U6  : Mux2to1_ParkerRubin PORT MAP (S0, I13, I12, M6);
    U7  : Mux2to1_ParkerRubin PORT MAP (S0, I15, I14, M7);

    -- Stage 2: S1 selects between the results of each pair of pairs
    U8  : Mux2to1_ParkerRubin PORT MAP (S1, M1, M0, N0);
    U9  : Mux2to1_ParkerRubin PORT MAP (S1, M3, M2, N1);
    U10 : Mux2to1_ParkerRubin PORT MAP (S1, M5, M4, N2);
    U11 : Mux2to1_ParkerRubin PORT MAP (S1, M7, M6, N3);

    -- Stage 3: S2 selects between the results of each half
    U12 : Mux2to1_ParkerRubin PORT MAP (S2, N1, N0, P0);
    U13 : Mux2to1_ParkerRubin PORT MAP (S2, N3, N2, P1);

    -- Stage 4: S3 selects the final output
    U14 : Mux2to1_ParkerRubin PORT MAP (S3, P1, P0, Y);

END structure;
