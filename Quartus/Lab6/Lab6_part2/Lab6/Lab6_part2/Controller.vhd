-- Lab 6 Part 2
-- Name: Natalie Poche
-- Class #: 111938

library ieee;
use ieee.std_logic_1164.all;

entity Controller is port(
	-- Outputs
	IR_LD, PC_INC, PC_LD : out std_logic;
	D : out std_logic_vector (1 downto 0);
	MSA : out std_logic_vector (1 downto 0);
	MSB : out std_logic_vector (1 downto 0);
	MSC : out std_logic_vector (2 downto 0);
	
	-- Inputs
	Q : in std_logic_vector (1 downto 0);
	IR : in std_logic_vector (2 downto 0)
);
end Controller;

architecture behavior of Controller is
begin
	D(1) <= ((not IR(2)) and ( IR(1)) and (not IR(0)) and (not Q(1)) and ( Q(0))) or
			(( IR(2)) and (not IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0)));
	
	D(0) <= ((not Q(1)) and (not Q(0))) or
			(( IR(2)) and (not IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0)));
	
	IR_LD <= ((not Q(1)) and (not Q(0)));
	
	PC_INC <= ((( Q(1)) or ( Q(0))) and ((not IR(2)) or ( IR(1)) or (not IR(0)) or (not Q(1)) or (not Q(0))));
	
	PC_LD <= (( IR(2)) and (not IR(1)) and ( IR(0)) and ( Q(1)) and ( Q(0)));
	
	MSA(1) <= ((not IR(2)) and (not IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			((not IR(2)) and ( IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			(( IR(2)) and (not IR(1)) and (not IR(0)) and (not Q(1)) and ( Q(0)));
	
	MSA(0) <= (( IR(2)) or (not IR(1)) or ( IR(0)) or (not Q(1)) or ( Q(0)));
	
	MSB(1) <= (( IR(2)) or ( IR(1)) or ( IR(0)) or ( Q(1)) or (not Q(0)));
	
	MSB(0) <= ((not IR(2)) and (not IR(1)) and (not IR(0)) and (not Q(1)) and ( Q(0)));
	
	MSC(2) <= ((not IR(2)) and (not IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			((not IR(2)) and ( IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			(( IR(2)) and (not IR(1)) and (not IR(0)) and (not Q(1)) and ( Q(0)));
	
	MSC(1) <= ((not IR(2)) and ( IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			(( IR(2)) and (not IR(1)) and (not IR(0)) and (not Q(1)) and ( Q(0)));
	
	MSC(0) <= ((not IR(2)) and (not IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0))) or
			((not IR(2)) and ( IR(1)) and ( IR(0)) and (not Q(1)) and ( Q(0)));
	
end behavior;