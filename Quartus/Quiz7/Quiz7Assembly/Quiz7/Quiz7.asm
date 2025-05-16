	org	$1000 ; In Ram
STOP	EQU	$1037

	org	0 ; In Rom
	ldx	$1037 ; Loads X location
	ldy	#$1000 ; Loads y location
	ldab	#00 ; sets B to 0
LOOP	ldaa	#01 ; sets a to 1 to keep count
	ldab	0,y ; loads value of current Y
	stab	$1000
	sum_ab	; Updates y value
	stab	0,y; stores y value in output table
	iny	; Increases position of y by 1
	comb	; 1's compliment of B
	sum_ab	; b value plus 1 for 2's compliment
	ldaa	0,x ; loads x value
	sum_ba	; x value - y
	bne	LOOP ; if not 0, then it returns to the loop

	
	
	