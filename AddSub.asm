; AddSub.asm - subtracts three integers using only 32-bit registers.
; Lab2 Homework 


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data 
val1 DWORD 1
val2 DWORD 2
val3 DWORD 4
sum  DWORD 8

.code
main proc
	mov		eax,val1			; start eax with  1
	mov		ebx,val2			; start ebx with  2
	mov		ecx,val3			; start ecx with  4
	mov		edx,sum				; start edx with  8

	sub		edx,eax				; edx subtract eax 8-1=7
	sub		edx,ebx				; edx subtract eax 7-2=5
	sub		edx,ecx				; edx subtract eax 5-4=1

	call	DumpRegs			; display the registers

	invoke ExitProcess,0
main endp
end main