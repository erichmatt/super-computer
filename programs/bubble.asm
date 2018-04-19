	org 00H
	ldi low main 	;\
	plo 3h		; |
	ldi high main	; |Set main program counter to Register 3
	phi 3h		;/		
	ldi low delay	;\
	plo 0Eh		; |
	ldi high delay	; |Set Register E as program counter for delay subroutine
	phi 0Eh		;/
	ldi low tbs	;\
	plo 4h		; |
	ldi high tbs	; |Set Register 4 as list pointer
	phi 4h		;/
exitd	sep 3h		;Set Register 3 as program counter to return to main program
delay	ldi 20h		;\
	phi 0Fh		;/Load the high bits of Register F with 20H
loop	dec 0Fh		;\
	ghi 0Fh		; |Decriment and check if high bits are 0 if they are exit
	bz exitd	;/
	br loop		;Do the loop again

main	sex 4h
	ldi 2h
	plo 05h
us	out 4h
	sep 0eh
	dec 5
	glo 5
	bnz us
	
done	seq
	br done

tbs	byte 10h
	byte 23h
	byte 30h
	byte 2h
	byte 3h
	byte 90h
	byte 20h
	byte 57h
	byte 12h
	end
