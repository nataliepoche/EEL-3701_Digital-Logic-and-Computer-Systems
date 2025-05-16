library ieee;
use ieee.std_logic_1164.all;

entity comLog is port(

	-- Inputs
	A_L: in std_logic;
	Q2: in std_logic;
	Q1: in std_logic;
	Q0: in std_logic;
	
	-- outputs
	D2: out std_logic;
	D1: out std_logic;
	D0: out std_logic;
	TS: out std_logic;
	F: out std_logic

);
end comLog;

architecture behav of comLog is
	signal A: std_logic;
	begin
	A <= not A_L;
	
	-- ((not Q2) and (not Q1) and (not Q0)) or
	
	D2 <= ((not Q2) and ( Q1) and ( Q0)) or
			(( Q2) and (not Q1) and (not Q0)) or
			(( Q2) and (not Q1) and ( Q0)) or
			(( Q2) and ( Q1) and (not Q0));
	
	D1 <= ((not Q2) and (not Q1) and ( Q0)) or
			((not Q2) and ( Q1) and (not Q0)) or
			(( Q2) and (not Q1) and ( Q0)) or
			(( Q2) and ( Q1) and (not Q0));
	
	D0 <= ((not Q2) and (not Q1) and (not Q0)) or
			((not Q2) and ( Q1) and (not Q0)) or
			(( Q2) and (not Q1) and (not Q0)) or
			(( Q2) and ( Q1) and (not Q0));
	
	-- ((not Q2) and (not Q1) and (not Q0) and (not A)) or
	F <= ((not Q2) and (not Q1) and (not Q0) and ( A)) or
			((not Q2) and (not Q1) and ( Q0) and ( A));

	TS <= ((not Q2) and ( Q1) and ( Q0)) or
			(( Q2) and ( Q1) and ( Q0));
end behav;