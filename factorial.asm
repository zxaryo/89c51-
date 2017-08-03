//Factorial using ports
// p0 input; p1 output

org 00h
			mov p0,#0ffh
			mov p1,#00h
	start:	mov a,p0
			cjne a,#01,zero
			ljmp op
	zero:	cjne a,#00,nope
			inc a
			ljmp op
	nope:	mov r0,a
			mov b,#01h
			mov a,b
	loop:	mov r1,b
			mul ab
			mov b,r1
			inc b
			djnz r0,loop
	op:		mov p1,a
			ljmp start
	end
