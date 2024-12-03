.global _start
_start:
	MOV R0, #1
	MOV R1, #2

 	MOV R5, #15 //stores decimal 15 in register R5
	
	CMP R0, R1 //R0-R1
	BLT lesser //branches if R0 is less than R1
	BGT greater //branches if R0 is greater than R1
 	BEQ equal //branches if R0 is equal to R1
	BAL end

lesser:
	LSR R5, R5, #1 //performs one logical right shift on register R5
	BAL end

greater:
	LSL R5, R5, #2 //performs two logical left shifts on register R5
 	BAL end

equal:
	ROR R5, R5, #1 //performs one right rotation on register R5
 	BAL end

end:
	MOV R3, #11
