.data
# Arranjo inicializado com elementos N n�o nulos.
_array: .half 3:5		  # N elementos com o valor 3       [substitua N pelo valor definido no relat�rio]
_size: .word 5  		  # tamanho do arranjo              [substitua N pelo valor definido no relat�rio]

.text
.globl main

main:
    la $a0, _array       ## $a0 = &array                    [completar com 1 pseudo-instru��o]
    lw $a1, _size        ## $a1 = size                      [completar com 1 instru��o nativa]
    jal clear1
    li  $v0,10
    syscall

clear1:
   add $t0, $zero, $zero ## i=0                             [completar com 1 instru��o nativa]
loop1:
   slt $t3, $t0, $a1     ## $t3 = (i < size)                [completar com 1 instru��o nativa]
   beq $t3, $zero, Exit  ## se (i >= size) desvia para Exit [completar com 1 instru��o nativa]
   sll $t1, $t0, 1       ## i = i * 2                       [completar com 1 instru��o nativa]			[]
   add $t2,$a0,$t1        # $t2 = &array[i]                 
   sh $zero,0($t2)        # array[i] = 0                    							[]
   addi $t0,$t0,1        ## i++                             [completar operando faltante]			                      
   j loop1
   
 Exit:
   jr $ra
