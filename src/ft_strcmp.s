section .text
	global _ft_strcmp

; rdi ptr to s1
; rsi ptr to s2
; rax return value

_ft_strcmp:
	xor rax, rax		; clear the rax register, only the al part will be set so rax is almost ready for returning
start:
	mov al, [rdi]		; move into rax
	cmp [rsi], al		; compare chars
	jne result			; jump to result when not equal

	cmp BYTE [rdi], 0	; string end check
	je result			; jump to result when equal

	inc rdi				; increase pointer
	inc rsi				; increate pointer
	jmp start			; restart loop

result:
	movzx rdx, BYTE [rsi]	; move the rsi char value into rdi for substraction.
	sub rax, rdx			; create the result.
	ret
