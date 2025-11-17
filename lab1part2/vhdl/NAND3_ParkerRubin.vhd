-- 3-Input NAND
-- By Parker Rubin

-- Part 1 - Include the neccesary libraries
library ieee;
use ieee.std_logic_1164.all;

-- Part 2 - Defines entity gives all external ports/connections
entity Nand3_ParkerRubin is
	port
	(
		-- Input ports
		X0, X1, X2	: in  std_logic ;

		-- Output ports
		Y	: out std_logic
	);
end Nand3_ParkerRubin;

-- Part 3 - defines ARCHIETECURES gives teh guts of the circuit

architecture structure of Nand3_ParkerRubin is

	-- Declarations (optional)

    signal w1, w2 : std_logic;
    
    
begin

    w1 <= X0 and X1; -- w1 = X0 X1
    w2 <= w1 and X2;-- w2 = X0 X1 X2
    y  <= not w2;

end structure;
