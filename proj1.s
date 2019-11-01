#PROGRAM: Hello, World!
.data 
	string: .space 11
	enter: .asciiz "\n"
.text

main:
	#reads input from the user
	li $v0, 8 
	la $a0, string 
	li $a1, 11 
	syscall
saves_input:
	#moves input into an accessible register
	move $t3, $a0
	lb $s2, ($t3)
check_characters:
	#checks the characters
	beq $t0, 10, output		
sort_values:
	#sorts the characters by type
	addi $t0, $t0, 1
	bge $s2, 97, lowercase_letters
	bge $s2, 65, uppercase_letters
	bge $s2, 48, numbers	

			
	
							