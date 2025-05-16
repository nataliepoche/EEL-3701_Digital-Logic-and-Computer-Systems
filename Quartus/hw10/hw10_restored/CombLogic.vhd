-- Homework 10
-- Name: Natalie Poche
-- Due: April 1, 2025
-- Description: VHDL Code for Hex to 7-Segment Decoder

library ieee;
use ieee.std_logic_1164.all;

entity CombLogic is port(

	-- Inputs
	X3: 	in std_logic;
	X2: 	in std_logic;
	X1: 	in std_logic;
	X0: 	in std_logic;
	
	T_L: 	in std_logic;
	
	-- Outputs
	A: 	out std_logic;
	B: 	out std_logic;
	C: 	out std_logic;
	D: 	out std_logic;
	E: 	out std_logic;
	F: 	out std_logic;
	G: 	out std_logic

);
end CombLogic;

architecture behavior of CombLogic is

	-- Process because T_L is active low, need to call normal T
	signal T: std_logic;
	begin
	T <= not T_L; -- Changes initial T_L to be opposite because active low
	
	-- ((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or	
	A <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			T);
	
	B <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			T);
	
	C <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			T);
	
	D <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			T);
	
	E <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			T);
	
	F <=	not(((not X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			T);
	
	G <=	not(((not X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((not X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (not X0) and (not T)) or
			((not X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((not X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (not X2) and (    X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (not X1) and (    X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (not X0) and (not T)) or
			((    X3) and (    X2) and (    X1) and (    X0) and (not T)) or
			T);
			
	end behavior;