Memcpy8 (dest: Ix, src: Iy, cnt: Bz) 
.loop: 
    LD I0, [Iy+Bz] 
    LD [Ix+Bz], I0
    DEC Bz 
    JPNIF .loop

Memcpy32 (dest: Ix, src: Iy, cnt: Iz) 
.loop: 
    LD I0, [Iy] 
    LD [Ix], I0
    INC Ix
    INC Iy
    DEC Iz
    JPNIF .loop
