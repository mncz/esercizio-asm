	.data
array1: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
array2: .space 1000
dim1:	.word 10
str:	.asciiz ";\n"

	.text
main:	lw $a0, dim1
	la $a1, array1
	jal PrintArray
	lw $a0, dim1
	jal BuildArray
	move $a0, $s1
	la $a1, array2
	jal PrintArray
	li $v0, 10
	syscall

PrintArray:
	move $t0, $a0
	move $t1, $a1
	move $t2, $zero
	
PrintCycle:	
	lw $a0, 0($t1)
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str
	syscall
	addi $t2, $t2, 1
	addi $t1, $t1, 4
	blt $t2, $t0, PrintCycle
	jr $ra

BuildArray:
	move $t0, $a0
	move $t1, $a1
	move $t2, $zero
	la $t3, array2
	sw $ra, 0($sp)

BuildCycle:
	lw $a0, 0($t1)
	sw $a0, 0($t3)
	jal DoubleIt
	addi $t3, $t3, 4
	sw $s0, 0($t3)
	addi $t1, $t1, 4
	addi $t2, $t2, 1
	addi $t3, $t3, 4
	blt $t2, $t0, BuildCycle
	lw $ra, 0($sp)
	add $s1, $t0, $t0
	jr $ra

DoubleIt:
	add $s0, $a0, $a0
	jr $ra
