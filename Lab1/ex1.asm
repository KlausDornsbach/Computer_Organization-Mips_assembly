.text		# define o inicio do segmento de instrucoes
.globl main	# define label global
main:
add $s0, $zero, $gp	# copia o valor de $gp no registrador s0
lbu $t0, 0($s0)		# pega um byte unsigned no endereço de s0
sb  $t1, 1($s0)		# coloca o valor do byte menos significativo de t1 no segundo
			# byte no endereço de s0