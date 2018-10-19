    	org 00H
	sex 4H
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
	seq

exitd	sep 3h		;Set Register 3 as program counter to return to main program
delay	ldi 20h		;\
	phi 0Fh		;/Load the high bits of Register F with 20H
loop	dec 0Fh		;\
	ghi 0Fh		; |Decriment and check if high bits are 0 if they are exit
	bz exitd	;/
	br loop		;Do the loop again

main	ldi 0ah		;\
	plo 05h		;/Set the number of items in the list

	bnq done	; If q is not set no swaps were made and we are done
	req		; Reset Q 
    	nop
    	nop
sort	dec 05h
	glo 05h
	bz main
	ldx
	out 4h		; Display contense of memory at address X
	sep 0Eh		; Go to Delay

	irx		;\Increment register X
	sm		;/and check to see if the next item in the list is bigger
	bnf sort
	seq
	ldx
	phi 5
	dec 4
	ldxa
	stxd
	ghi 5
	str 4
	dec 5
	glo 5
	bnz sort
   	nop
    	nop
    	nop
	br main
done	seq
	sep 0eh
	req
	sep 0eh
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

