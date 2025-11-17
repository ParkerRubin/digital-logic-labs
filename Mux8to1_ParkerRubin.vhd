-- 8 to 1 Mux 
-- By Parker Rubin
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Mux8to1_ParkerRubin IS
PORT (
    S2, S1, S0 : IN  STD_LOGIC;                -- S2=MSB, S0=LSB
    I0, I1, I2, I3, I4, I5, I6, I7 : IN STD_LOGIC;
    Y : OUT STD_LOGIC
);
END Mux8to1_ParkerRubin;

ARCHITECTURE rtl OF Mux8to1_ParkerRubin IS
    SIGNAL Sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    Sel <= S2 & S1 & S0;

    WITH Sel SELECT
        Y <= I0 WHEN "000",
             I1 WHEN "001",
             I2 WHEN "010",
             I3 WHEN "011",
             I4 WHEN "100",
             I5 WHEN "101",
             I6 WHEN "110",
             I7 WHEN OTHERS;  -- "111"
END rtl;
