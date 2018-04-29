Start:
	LD Ia, 3600
	LD Ib, 60
	LD Ic, 24
	LD I6, 1
	LD I7, 2
	LD I8, 6
	LD B3, 0x03
	LD B4, 0x40
	LD B5, 0
	FUS B5, B5, B4, B3, I3
Loop:
	LD I0, TS
	LD I1, I0
	DIV I1, Ia
	MOD I1, Ic	;Hours
	LD I2, I0
	DIV I2, Ib
	MOD I2, Ib	;Minutes
	MOD I0, Ib	;Seconds
	LD B0, I0
	LD B1, I2
	LD B2, I1
	BCD B0, [I3]	;Store bcds
	ADD I3, I7
	BCD B1, [I3]
	ADD I3, I7
	BCD B2, [I3]
	ADD I3, I7
	SUB I3, I8
	LD B9, [I3]
	INC I3
	LD Ba, [I3]
	INC I3
	LD Bb, [I3]
	INC I3
	LD Bc, [I3]
	INC I3
	LD Bd, [I3]
	INC I3
	LD Be, [I3]
	LD B8, 0
	LD B7, 0x20
	OUT 0, 0x00	;Clear screen
	OUT 0, B7	
	INC B7
	OUT 0, Bd	;Prints first hours char
	OUT 0, B7
	INC B7
	OUT 0, Be	;Prints second hours char
	OUT 0, B7
	INC B7
	OUT 0, 0x3A	;Prints ':' (ascii 3A)
	OUT 0, B7
	INC B7
	OUT 0, Bb	;First minutes char
	OUT 0, B7
	INC B7 
	OUT 0, Bc	;Second minutes char
	OUT 0, B7
	INC B7
	OUT 0, 0x20	;Prints ' ' (ascii 20)
	OUT 0, B7
	INC B7
	OUT 0, B9	;First seconds char
	OUT 0, B7
	INC B7
	OUT 0, Ba	;Second seconds char
	JP Loop
	
	
	
