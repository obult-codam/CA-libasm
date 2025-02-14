.text
.global _ft_strlen

_ft_strlen:
	mov		x9, xzr		; zero the x9 reg as counter

LOOP:
	ldrb	w1, [x0]	; load the byte to a 32bit register.
	cbz		w1, END
	add		x9, x9, #1	; increase counter
	add		x0, x0, #1	; increase pointer
	b		LOOP		; loop back and check next char

END:
	mov x0, x9		; move the result into the return value register.
	ret
