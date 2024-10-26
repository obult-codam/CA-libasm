section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

;	rdi - source string

_ft_strdup:
	push rdi		;
	call _ft_strlen
	; rax is now the len of the string to dup

	mov rdx, rax	; save the len for later
	mov rdi, rax	; place len in arg to malloc

	call _malloc
	cmp rax, 0
	je finish

	; populate the registers for the strcpy call dst, src
	mov rdi, rax	; populate the dst with the allocated string
	pop rsi		; get back copy to src string ptr
	call _ft_strcpy

finish:
	ret