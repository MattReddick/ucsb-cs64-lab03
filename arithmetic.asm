# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 5
	syscall
	move $t2, $v0

	add $t3, $t0, $t1
	add $t3, $t3, $t3
	add $t3, $t3, $t3

	li $t4, 3
	mult $t2, $t4
	mflo $t2

	#move $a0, $t4
	#li $v0 , 1
	#syscall

	#move $a0, $t2 
	#li $v0 , 1
	#syscall

	sub $t0, $t3, $t2
	move $a0, $t0
	li $v0, 1
	syscall
	

exit:
	# Exit
	li $v0, 10
	syscall

