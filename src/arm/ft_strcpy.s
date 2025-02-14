.text
.global _ft_strcpy

; x0 ptr to dst
; x1 ptr to src

_ft_strcpy:
	mov x2, xzr	; zero the counter
	mov x4, x0

LOOP:
	ldrb	w3, [x1, x2]	; load the char at x1 with offset in x2
	stlrb	w3, [x4]		; store the byte
	cbz		w3, RESULT		; check for null terminater
	add		x2, x2, #1			; increase counter
	add		x4, x4, #1
	b		LOOP

RESULT:
	ret