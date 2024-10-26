section .text
	global _ft_write
	extern _ft_strlen

_ft_write:
	push rdi
	call _ft_strlen
	mov rdx, rax			; place the len of the string
	; mov rsi, rcx
	pop rsi
    mov rax, 0x2000004   ; syscall number for write in macOS (x86_64)
    mov rdi, 1           ; file descriptor 1 (stdout)
    syscall              ; make the syscall
	ret
