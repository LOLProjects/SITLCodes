; Memset8 (dest: Ix, val: Bx, count: By) 
.loop 
    LD [Ix+By], Bx
    DEC By 
    JPNIF .loop
