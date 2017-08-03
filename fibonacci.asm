//fibonacci seris in memory
//n from 32h, output begins at 33h
// output 01 01 02 03 05 08 0d 15 22 37 59 90 e9 
// e9h (233b) is the limit.
org 00h
	start: mov a,32h
		   mov r0,a
		   dec r0
		   dec r0
		   mov r1,#33h
		   mov a,#01h
		   mov b,a
		   mov @r1,a
		   inc r1
		   mov @r1,a
	loop:  mov r2,a
		   add a,b
		   mov b,r2
		   inc r1
		   mov @r1,a
		   djnz r0,loop 
	end