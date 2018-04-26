Disp:	;I0 gives the address in ram where the string is
		;Disp prints a 16 char string from ram
	LD Bd, 0x10
	LD Be, 0
	LD Ie, DispLoop 
DispLoop:	
	LD Be, [I0]
	OUT 0, Bd	;Sets the character position, as Be = 0x1?
	OUT 0, 0x20
	OUT 0, Be
	INC I0
	INC Bd
	CMP Bd, 26
	TSTEQ
	JPNIF Ie
	RET
Clr:	;Clears the screen
	OUT 0, 0x00
	RET