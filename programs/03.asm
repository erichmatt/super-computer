	org 00H
	ldi low main 	;\
	plo 3		; |
	ldi high main	; |Set main program counter to Register 3
	phi 3		; |
	sep 3		;/

main	seq		;Set Q

	ldi low delay	;\
	plo 7		; |
	ldi high delay	; |Set Register 7 as program counter for delay subroutine
	phi 7		; |
	sep 7		;Change program counter to Register 7 to goto delay

	req		;Reset Q
	sep 7		;Change program counter to Register 7 to goto delay
	br main

exitd	sep 3		;Set Register 3 as program counter to return to main program
delay	ldi 20H		;\
	phi 0fh		;/Load the high bits of Register F with 20H
loop	dec 0fh		;\
	ghi 0fh		; |Decriment and check if high bits are 0 if they are exit
	bz exitd	;/
	br loop		;Do the loop again
	end
