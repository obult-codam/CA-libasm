section .text
	global _ft_strcpy

; rdi ptr to dst
; rsi ptr to src
; rax return value

_ft_strcpy:
	mov rax, rdi		; save destination pointer in rax for return

loop:
	cmp BYTE [rsi], 0
	je result
	mov dl, [rsi]	; direct memory to memory not possible so use register
	mov [rdi], dl	; actual mov
	inc rsi
	inc rdi
	jmp loop

result:
	mov BYTE [rdi], 0	; add string termination
	ret

