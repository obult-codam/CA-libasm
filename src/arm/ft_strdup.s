.text
.global _ft_strdup
.extern _ft_strlen
.extern _ft_strcpy
.extern _malloc

;	args:
;		x0	:	source
;	return:
;		x0	:	pointer to duplaction.

_ft_strdup:
	; save the source to another register
	;sub sp, sp, #16	; make room on stack pointer.
	;str x0, [sp]
	stp x0, x30, [sp, #-16]!	; push 0 to stack

	bl _ft_strlen
	add x0, x0, #1	; add room for null terminator.

	; len is already in place for arg in malloc call.
	bl _malloc
	cbz x0, END

	; put the source in second arg spot.
	ldr x1, [sp]
	; dest is already in x0, love arm!
	bl _ft_strcpy

END:
	ldr x30, [sp, #8]	; restore return address.
	add sp, sp, #16	; restore stack pointer.
	ret