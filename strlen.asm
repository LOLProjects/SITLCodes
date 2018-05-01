; strlen (str: Ix, return: Bx) 
LD Bx, 0
.loop:
	LD I0, [Ix+Bx]
	CMP I0, 0
	JPNIF .out
	INC Bx
	JMP .loop 
.out:
