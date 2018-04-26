Disp:	;I0 gives the address in ram where the string is
		;Disp prints a 16 char string from ram
	LD Bd, 0x10
	LD Be, 0
DispLoop:	
	LD Be, [I0]
	OUT 0, Bd	;Sets the character position, as Bd = 0x1?
	OUT 0, 0x20
	OUT 0, Be
	INC I0
	INC Bd
	CMP Bd, 0x20
	TSTEQ
	JPNIF DispLoop
	RET
Clr:	;Clears the screen
	OUT 0, 0x00
	RET
