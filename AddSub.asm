; AddSub.asm - subtracts three integers using only 32-bit registers.
; Lab2 Homework 


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data 
val1 DWORD 10

.code
main proc
	mov		eax,val1			; start eax with  10

	sub		eax,1				; subtract 1
	sub		eax,2				; subtract 2
	sub		eax,4				; subtract 4

	call	DumpRegs			; display the registers

	invoke ExitProcess,0
main endp
end main