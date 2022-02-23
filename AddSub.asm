; AddSub.asm - subtracts three integers using only 32-bit registers.
; Lab2 Homework 


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data 
  FIBNum    DWORD 50 DUP(?)
  vla       DWORD ?


.code
main proc ;
  ;Set FIBNum number  F(0) = 1,  F(1) = 1                          
	mov [ FIBNum ] ,1                                        ;  F(0) = 1
	mov [ FIBNum +4] ,1                                      ;  F(1) = 1
  
  ;print f(0), f(1)
	mov eax, 1
	call WriteDec
	call Crlf
	call WriteDec
	call Crlf
	
  ;
	mov  esi, OFFSET FIBNum
	mov ecx, 28                                              ; print FIBNum to  f(30)
L1:
	mov eax, [ esi ];
	add eax, [ esi + 4];
	mov [ esi + 8 ], eax;
  
	call WriteDec                                           ;print int 
	call Crlf											   ;chang line
	add esi,4

	loop L1
  
	invoke ExitProcess,0
main endp
end main