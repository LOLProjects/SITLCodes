; bubblesort (ptr: Ix, len: Bx)
LD N0, 1

.outer
LD Nf, N0
JPNIF .outerout
LD N0, 0
LD B0, 0
.inner
   CMP B0, Bx
   JPIF .outer
   
  LD I0, [Ix+B0] 
  LD I1, [Ix+B0+1] 
  CMP I0, I1
  TSTGT
  JPNIF .cont 
  ; swap values 
  LD [Ix+B0+1], I0 
  LD [Ix+B0], I1
  LD N0, 1
 .cont
  INC B0
  JMP .inner
 .outerout
 RET
