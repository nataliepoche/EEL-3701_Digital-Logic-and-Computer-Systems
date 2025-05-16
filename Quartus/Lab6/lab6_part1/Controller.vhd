-- Lab 6
-- Name: Natalie Poche
-- Class#: 11198
-- PI Name: Jaiden Magnan
-- Due: April 10, 2025

library ieee;
use ieee.std_logic_1164.all;

entity Controller is port (
	-- Inputs
	IR:	in std_logic_vector (1 downto 0); -- Logic Bus
	Q0:	in std_logic;
	
	-- Outputs
	D0:	out std_logic;
	MSA: 	out std_logic_vector (1 downto 0);
	MSB: 	out std_logic_vector (1 downto 0);
	MSC: 	out std_logic_vector (2 downto 0)
	
	);
	end Controller;

	architecture behavior of Controller is
		begin
--		D0 <= (not Q0);
--		
--		MSA(1) <=((    Q0) and (    IR(0)));
--					
--		MSA(0) <=((    Q0) and (    IR(0))) or
--					((    Q0) and (    IR(1)) and (    IR(0))) or
--					(not Q0); -- hold state
--					
--		MSB(1) <=((    Q0) and (    IR(1))) or
--					((    Q0) and (not IR(1)) and (    IR(0))) or
--					(not Q0); -- hold state
--		
--		MSB(0) <=((    Q0) and (not IR(1)) and (not IR(0)));
--		
--		MSC(2) <=((    Q0) and (    IR(0)));
--		
--		MSC(1) <=((    Q0) and (    IR(1)) and (    IR(0)));
--		
--		MSC(0) <=((    Q0) and (    IR(0)));
		D0 <= (not Q0);
		MSA(1) <=((not IR(1)) and (IR(0))) or
					((IR(1)) and (IR(0)));
		MSA(0) <= ((not IR(1)) and (not IR(0))) or
						((not IR(1)) and (IR(0))) or
						((IR(1)) and (IR(0)));
		MSB(1) <= ((not IR(1)) and (IR(0))) or
						((IR(1)) and (not IR(0))) or
						((IR(1)) and (IR(0)));
		MSB(0) <= ((not IR(1)) and (not IR(0)));
		MSC(2) <= ((not IR(1)) and (IR(0))) or
						((IR(1)) and (IR(0)));
		MSC(1) <= ((IR(1)) and (IR(0)));
		MSC(0) <= ((not IR(1)) and (IR(0))) or
						((IR(1)) and (IR(0)));		
		
		end behavior;