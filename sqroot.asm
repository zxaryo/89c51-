//root of perfect squere number
// ip 32h
//works only for square numbers
org 00h 
	start: mov a,32h
		mov r0,a
		mov r1,#01h
		mov r2,#00h
loop: 
		mov r3,a
		subb a,r1
		addc a,#00h
		jnz ext
		mov a,r3
		inc r2
		inc r1
		inc r1
		jnz  loop 
		mov a,r2
		mov r1,#33h
		mov @r1,a
ext:
end
