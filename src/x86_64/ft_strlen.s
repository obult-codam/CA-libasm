section .text
	global _ft_strlen	; make function available.

_ft_strlen:
	xor rcx, rcx	; init to 0

start:
	mov al, [rdi]
	test al, al
	jz ending	; jump to ending if rax is 0
	inc rcx		; increment counter
	inc rdi		; increment address
	jmp start

ending:
	mov rax, rcx
	ret
