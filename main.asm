		.data
array1: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
array2: .space 1000
dim1:	.word 10
str:	.asciiz ";\n"

		.text
main:	lw $a0, dim1
		la $a1, array1
		jal PrintArray
		li $v0, 10
		syscall

PrintArray:
		move $t0, $a0
		move $t1, $a1
		move $t2, $zero
	
ciclo:	lw $a0, 0($t1)
		li $v0, 1
		syscall
		li $v0, 4
		la $a0, str
		syscall
		addi $t2, $t2, 1
		addi $t1, $t1, 4
		blt $t2, $t0, ciclo
		jr $ra