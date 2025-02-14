section .text
	global _ft_write
	extern _ft_strlen
	extern ___error

_ft_write:
    mov rax, 0x2000004   ; syscall number for write in macOS (x86_64)
    syscall              ; make the syscall
	jc _set_errno        ; jump to errno if syscall failed
	ret

_set_errno:
	push rax
	call ___error
	pop rdx
	mov [rax], rdx
	mov rax, -1
	ret
