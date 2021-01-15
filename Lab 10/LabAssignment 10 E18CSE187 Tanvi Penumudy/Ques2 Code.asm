.data
msg:  .asciiz "\n"

.text 
main:	li $t0, 1
	li $t1, 3
	li $t2, 0
	
	loop:	bgt $t0,$t1, return
		li $v0, 4
		la $a0, msg
		syscall
		li $v0, 1
		la $a0, ($t0)
		syscall
		addi $t0,$t0, 1
		b loop
	return: 
		li $v0, 10
		syscall