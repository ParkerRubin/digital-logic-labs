-- 4 to 1 Mux
-- By Parker Rubin
-- Part 1
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- Part 2
ENTITY Mux4to1_ParkerRubin IS
PORT (
    S1, S0 : IN STD_LOGIC;        -- two select lines
    I0, I1, I2, I3 : IN STD_LOGIC; -- four data inputs
    Y : OUT STD_LOGIC              -- single output
);
END Mux4to1_ParkerRubin;

-- Part 3
ARCHITECTURE structure OF Mux4to1_ParkerRubin IS

    -- component declaration for 2-to-1 Mux
    COMPONENT Mux2to1_ParkerRubin
        PORT (
            S, I1, I0 : IN STD_LOGIC;
            Y : OUT STD_LOGIC
        );
    END COMPONENT;

    -- internal signals
    SIGNAL M0, M1 : STD_LOGIC;

BEGIN
    -- two lower-level muxes for first stage
    U0 : Mux2to1_ParkerRubin PORT MAP (S0, I1, I0, M0);
    U1 : Mux2to1_ParkerRubin PORT MAP (S0, I3, I2, M1);

    -- top-level mux combining outputs
    U2 : Mux2to1_ParkerRubin PORT MAP (S1, M1, M0, Y);

END structure;
