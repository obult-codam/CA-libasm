section .text
	global _ft_read
	extern _errno
	extern ___error

; rdi
; rsi
;

_ft_read:
	mov rax, 0x2000003	; syscall read on macos
	syscall
	jc _set_errno
	ret

_set_errno:
	push rax
	call ___error
	pop rdx
	mov [rax], rdx
	mov rax, -1
	ret
