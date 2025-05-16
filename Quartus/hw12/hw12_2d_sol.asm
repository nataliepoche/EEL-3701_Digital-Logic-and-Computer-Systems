****************************************
Num	EQU	$10
Numx2	EQU	NUM*2	; $20
Neg1	EQU	$FF	; 2’s complement minus 1
* Could replace the above line with a 
*	Minus1	DC.B	$FF
*    If did this replacement, would also need to change code.
*    The line LDAB #Neg1 would be replaced by 
*	LDAB	Minus1 .
****************************************
	ORG	$1200
Count	DS.B	1
	ORG	$1100

Table	
	DS.B	Num	; for Table #1
	DS.B	Num	; for Table #2
	DS.B	Num	; for Table #3
****************************************
* Main program

	ORG	$0	; assembler directive (origin) to tell where code will be placed in memory
	LDX	#Table	; pointer to data
	LDAA	#Num	; counter value
	STAA	Count	; counter will be saved in memory to free up a CPU register
LOOP:	
	LDAA	0,X	; get 1st data value
	LDAB	Num,X	; get 2nd data value
	SUM_BA		; data1 + data2
	SHFB_R		; divide sum by 2
	STAB	Numx2,X	; store average. value
	INX		; increment pointer
	LDAB	#Neg1	; -1 in 2’s complement format
	LDAA	Count	; count = count – 1
	SUM_BA
	BEQ	DONE	; branch to done if count is zero
	STAA	Count	; else, save counter value
	BNE	LOOP	; and repeat loop
DONE: 	BEQ	DONE	; loop forever