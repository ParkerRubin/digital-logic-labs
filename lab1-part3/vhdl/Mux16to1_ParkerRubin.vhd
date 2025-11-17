-- 16 to 1 Mux (behavioral)
-- By Parker Rubin
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Mux16to1_ParkerRubin IS
PORT (
    S3, S2, S1, S0 : IN  STD_LOGIC;
    I0, I1, I2, I3, I4, I5, I6, I7,
    I8, I9, I10, I11, I12, I13, I14, I15 : IN STD_LOGIC;
    Y : OUT STD_LOGIC
);
END Mux16to1_ParkerRubin;

ARCHITECTURE rtl OF Mux16to1_ParkerRubin IS
    SIGNAL Sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    Sel <= S3 & S2 & S1 & S0;

    WITH Sel SELECT
        Y <= I0  WHEN "0000",
             I1  WHEN "0001",
             I2  WHEN "0010",
             I3  WHEN "0011",
             I4  WHEN "0100",
             I5  WHEN "0101",
             I6  WHEN "0110",
             I7  WHEN "0111",
             I8  WHEN "1000",
             I9  WHEN "1001",
             I10 WHEN "1010",
             I11 WHEN "1011",
             I12 WHEN "1100",
             I13 WHEN "1101",
             I14 WHEN "1110",
             I15 WHEN OTHERS;  -- "1111"
END rtl;
