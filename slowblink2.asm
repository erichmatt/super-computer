main	org 00
	seq
	mark
	br delay
	req
	mark
	br delay
	br main

delay	inc 3
	br delay
	end	
