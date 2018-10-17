	org 00H
	ldi low main 	;\
	plo 3h		; |
	ldi high main	; |Set main program counter to Register 3
	phi 3h		;/		
	
	ldi low tbs	;\
	plo 4h		; |
	ldi high tbs	; |Set Register 4 as list pointer
	phi 4h		;/
	sep 3h		;Set Register 3 as program counter to return to main program

main	sex 4h
	ldi 0ah
	plo 05h
	bnq done
	req
sort	ldx
	out 4h
	sm
	bnf sort
	ldx
	phi 5
	dec 4
	ldxa
	stxd
	ghi 5
	str 4
	dec 5
	glo 5
	seq
	bnz sort
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
