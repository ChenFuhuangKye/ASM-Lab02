; AddSub.asm - subtracts three integers using only 32-bit registers.
; Lab2 Homework 


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data 




.code
main proc ;
	
	mov eax,25
	inc eax
	neg eax
	mov ebx,30
	add ebx,17
	add eax,ebx
	mov ebx,123
	neg ebx
	add ebx,192
	neg ebx
	add eax,ebx
	call DumpRegs
	
	invoke ExitProcess,0
main endp
end main