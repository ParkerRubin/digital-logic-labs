-- Lab 3 | DFF (Data Flip Flop) Clock Active High
-- Using VHDL Behavioral Mode
-- Parker Rubin - Z23775791

library IEEE;
use ieee.std_logic_1164.all;
  -- Z23775791       

entity DFF_ParkerRubin is
   port ( D, clock : IN std_logic;
          Q : INOUT std_logic);

  end DFF_ParkerRubin;
  -- Z23775791       
 
 architecture behavior of DFF_ParkerRubin is 
 
 begin 
 
 -- sequential instructions
 process (clock) -- watch list for change
 -- specify extra variables that you need
 begin 
 
   -- if ( ) then ... else ...; if () then ... elsif
      if (rising_edge(clock)) then 
        Q <= D;
      end if;
 end process;
 
 end behavior;