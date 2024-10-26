section .text
	global _ft_read

; rdi
; rsi
;

_ft_read:
	mov rax, 0x2000003	; syscall read on macos
	syscall
	ret
