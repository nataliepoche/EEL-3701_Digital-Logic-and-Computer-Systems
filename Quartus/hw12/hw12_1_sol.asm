N		EQU	200
TABLE	EQU	$1000
NEG1	EQU	%11111111	; $FF

	ORG	$1800	; temporary data area
TEMP	DS.B	1
COUNT	DS.B	1

;	org $1000
;TABLE	dc.b	$37, $55, $A2, $B3, ...

	ORG	0
	LDAA	#N		; immediate addressing
	STAA	COUNT	; extended addressing
	LDX	#TABLE	; ptr to top of table (immediate addressing)
Loop
	LDAB	0,X	; get test #2 score (indexed addressing)
	LDAA	1,X	; get test #3 score (indexed addressing)
	STAA	TEMP	; save test #3 score in temp area (extended)
	LDAA	2,X	; get test #1 score (indexed)
Re_order_data:
	STAA	0,X	; store test #1 score (indexed)
	STAB	1,X	; store test #2 score (indexed)
	LDAA	TEMP	; get test #3 score (extended)
	STAA	2,X	; store test #3 score (indexed)
Check_counter
	LDAA	COUNT	; retrieve count (extended)
	LDAB	#NEG1	; decrement counter (immediate)
	SUM_BA		; count = count -1 (inherent)
	BEQ	END	; if count = 0 then end (absolute)
	STAA	COUNT	; save count (extended)
	INX		; inc ptr (inherent)
	INX		; inc ptr (inherent)
	INX		; inc ptr (inherent)
	BNE	Loop	; if count != 0 then loop (absolute)
END	BEQ	END	; something to do (absolute)
