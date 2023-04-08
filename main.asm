	.data
array1: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
dim:	.word 10
str:	.asciiz ";\n"

	.text
main:
	lw $a0, dim
	la $a1, array1
	jal PrintArray
	
	li $v0, 10
	syscall

PrintArray:
	move $t1, $a0
	move $t2, $a1
	move $t0, $zero
	
ciclo:
	lw $a0, 0($t2)
	li $v0, 1
	syscall

	la $a0, str
	li $v0, 4
	syscall
	
	addi $t0, $t0, 1
	addi $t2, $t2, 4
	blt $t0, $t1, ciclo
	jr $ra
