-- Natalie Poche
-- Class #: 11198
-- PI Name: Jaiden Magnan
-- Due: March 27, 2025

library ieee;
use ieee.std_logic_1164.all;

entity Combinational_Logic is port ( -- Make sure name is same as file name.
	-- State Inputs
	Q3: 	in std_logic;	
	Q2: 	in std_logic;
	Q1: 	in std_logic;
	Q0: 	in std_logic;
	
	-- Input Checks
	CW: 	in std_logic;
	EV: 	in std_logic;
	
	-- Next State Outputs
	D3: 	out std_logic;
	D2: 	out std_logic;
	D1: 	out std_logic;
	D0: 	out std_logic;
	
	-- Light Outputs
	Gr: 	out std_logic;
	Ye: 	out std_logic;
	Re: 	out std_logic -- Last output doesn't need a semi-colon, the end parenthesis with semi-colon takes care of it
	);
	end Combinational_Logic;
	
architecture behavior of Combinational_Logic is
	begin
	-- ((not Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (not CW)) or
	
	D3 <= ((not Q3) and (    Q2) and (    Q1) and (    Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (    Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)) or -- 1
			
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or -- 1
			
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or -- 1
			
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or -- 1
			
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)); -- 1
	
	
	D2 <= ((not Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (not EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (not EV) and (    CW)) or
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (not EV) and (    CW)) or -- 1
			
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or -- 1
			
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)); -- 1
	
	
	D1 <= ((not Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (    CW)) or
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (    EV) and (not EV)) or
			((not Q3) and (    Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or --
			
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)); --
	
	
	D0 <= ((not Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (    CW)) or --
			
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or --
			
			((not Q3) and (    Q2) and (not Q1) and (not Q0) and (not EV) and (    CW)) or --
			
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (not EV) and (    CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0) and (    EV) and (    CW)) or --
			
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (not CW)) or
			((    Q3) and (not Q2) and (    Q1) and (    Q0) and (    EV) and (    CW)); --
	
	-- ((not Q3) and (not Q2) and (not Q1) and (not Q0)) or
	Gr <= ((not Q3) and (not Q2) and (not Q1) and (not Q0)) or
			((not Q3) and (not Q2) and (not Q1) and (    Q0)) or
			((not Q3) and (not Q2) and (    Q1) and (not Q0)) or
			((not Q3) and (not Q2) and (    Q1) and (    Q0)) or
			((not Q3) and (    Q2) and (not Q1) and (not Q0));
	
	
	Ye <= ((not Q3) and (    Q2) and (not Q1) and (    Q0)) or
			((not Q3) and (    Q2) and (    Q1) and (not Q0));
	
	
	Re <= ((not Q3) and (    Q2) and (    Q1) and (    Q0)) or
			((    Q3) and (not Q2) and (not Q1) and (not Q0)) or
			((    Q3) and (not Q2) and (not Q1) and (    Q0)) or
			((    Q3) and (not Q2) and (    Q1) and (not Q0)) or
			((    Q3) and (not Q2) and (    Q1) and (    Q0));
	
	end behavior;