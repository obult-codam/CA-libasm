.text
.global _ft_read

_ft_read:
	mov		x16, #3
	svc		#0
	ret
