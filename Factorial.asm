; Factorial(int n) 
PUSH If
LD If, SP
ADD SP, 4

LD I0, [If-0x6]
CMP I0, 1
TSTLE 
JPIF .out

DEC I0
PUSH I0
CALL Factorial 
POP I1
INC I1
MUL I0, I1

.out:
	LD SP, If
	POP If
	RET ; I0 is the return value 
