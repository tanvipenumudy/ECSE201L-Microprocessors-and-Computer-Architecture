.data
msg1: .asciiz "Enter a Number: "
msg2: .asciiz "Reversed Number: "

.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall

move $t0, $v0
li $t1, 0
li $t3, 10


loop:	ble $t0,$zero, exit
	div $t0, $t3
	mfhi $t2
	mul $t4,$t1, $t3
	add $t1,$t4, $t2
	div $t0,$t0, 10	
	b loop
	
exit:	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	la $a0, ($t1)
	syscall
	
	li $v0, 10
	syscall