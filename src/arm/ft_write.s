.text
.global _ft_write
.extern _ft_strlen

_ft_write:
	mov		x16, #4		; syscall for write
	svc		0x80
	ret
