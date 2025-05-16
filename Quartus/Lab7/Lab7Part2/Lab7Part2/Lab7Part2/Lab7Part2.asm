	org	$1000 ; In RAM
START	equ	$1AFE ; Define START to Address
	
	org	0 ; In ROM
	ldaa	#$FE ; Load First two bytes of Start with $1FFE
	staa	START ; Little Endian
	ldaa	#$1F ; Load First two bytes of Start with $1FFE
	staa	START + 1 ; Big Endian
	
	ldaa	#$03 ; Loads START + 2 with $3
	staa	START + 2
	
	ldx	#(START + 2) ; Loads ldx with address $03
	ldaa	#0
HERE	beq	HERE
	LDX #$1800
	LDY #$1900
LOOP	LDAA 0,X
	TAB
	STAB 0,Y
	INX INY
	BNE LOOP