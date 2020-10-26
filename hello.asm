# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	request: .asciiz "Enter an integer:\n"
	hello: .asciiz "Hello Pandemic World!"
	result: .asciiz "\nThe magic number is "
	exclamation: .asciiz "!!!" 

#Text Area (i.e. instructions)
.text
main:
	li $v0 , 4
	la $a0, request
	syscall

	li $v0 , 5
	syscall
	move $t1, $v0

	li $v0 , 4
	la $a0, hello
	syscall

	li $v0, 4
	la $a0, result
	syscall

	li $v0 , 1
	move $a0, $t1
	syscall

	li $v0 , 4
	la $a0, exclamation
	syscall
	

exit:
	# Exit
	li $v0, 10
	syscall

