#PROGRAM: Hello, World!
.data
string: .asciiz "Enter a string of 10 characters:"
.text
main:
li $v0, 8 #used to take input from a user
la $a0, string #used to save the string in the variable
syscall #used to print the string
loop: #Decided to use a loop instead of a counter 
#using to test github
Exit:
