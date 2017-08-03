//Pgm to find smallest of n numbers
// n- 32h ; array begin -34h ; result -33h

org 00h
start: 
		mov a,32h
		dec a
		mov r1,a
		mov a,34h
		mov b,#35h
		mov r0,b
loop:		
		mov r3,a
		clr c 
		subb a,@r0

		mov a,#0h
		addc a,#00h
		cjne a,#0h,ny
		mov a,@r0
		jmp nx
ny:		mov a,r3
nx:		
		inc r0
		djnz r1	,loop
		mov 33h,a
		ljmp start
end
		