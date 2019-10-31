#PROGRAM: Hello, World!
.data
string: .asciiz "Enter a string of 10 characters:"
.text
main:
li $v0, 8
la $a0, string
syscall
li $v0, 4
syscall

addi $t0,$t0, 0
Counter: bne $t0, 10, Exit
	la $a1,0($a0)

	addi $a1,$a0,1
	addi $t0,$t0,1
	j Counter
Exit:
