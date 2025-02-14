.text
.global _ft_strcmp

_ft_strcmp:
	mov		x11, xzr		; zero counter

LOOP:
	ldrb	w9, [x0, x11]	; load the byte in the first pointer
	ldrb	w10, [x1, x11]	; load the second byte
	cbz		w9, RESULT
	cmp		w9, w10			; compare the bytes
	bne		RESULT			; not equal jump to end.

	add		x11, x11, #1	; increase counter
	b		LOOP

RESULT:
	mov		x0, xzr			; zero the return register.
	sub		w0, w9, w10		; set the result
	ret
