# Lab 10 Array Manipulation
# CSC 204 Computer Architecture and Organization (Summer 2020)
# Oakton Community College
# Professor: Dr. Hector Hernandez
#
# @file Lab10.asm
# @author Russell Taylor
# @date 7/11/20
#
# This program creates and manipulates arrays
# Written from scratch in MIPS Assembly Language
# "For this project, you will create an array similar to Project 1 and
# turn it into an assembler program. Namely, declare a table to be of
# size 5 for example and populate each index with a value of 100."

#Creates an array
	.data
array:	.word	0 : 5		# array of 5 words
index0:	.asciiz	"Element at index 0: "
index1:	.asciiz	"Element at index 1: "
index2:	.asciiz	"Element at index 2: "
index3:	.asciiz	"Element at index 3: "
index4:	.asciiz	"Element at index 4: "

	.text
main:
    la $t0, array		# load address of array

    li $t2, 100           	# array[0] = 100
    sw $t2, 0($t0)
    li $t2, 200           	# array[1] = 200
    sw $t2, 4($t0)
    li $t2, 300           	# array[2] = 300
    sw $t2, 8($t0)
    li $t2, 400           	# array[3] = 400
    sw $t2, 12($t0)
    li $t2, 500           	# array[4] = 500
    sw $t2, 16($t0)

    #output element at array index 0
    li $v0, 4			#system call code 4 print string
    la $a0, index0
    syscall			#print "Element at index 0: "
    li $v0, 1			#system call code 1 print integer
    lw $a0, 0($t0)
    syscall			#print number at array index 0
    li $v0, 11			#system call code 11 print character
    la $a0, 10			#ascii charachter 10 newline
    syscall			#print newline

    #output element at array index 1
    li $v0, 4
    la $a0, index1
    syscall
    li $v0, 1
    lw $a0, 4($t0)
    syscall
    li $v0, 11
    la $a0, 10
    syscall

    #output element at array index 2
    li $v0, 4
    la $a0, index2
    syscall
    li $v0, 1
    lw $a0, 8($t0)
    syscall
    li $v0, 11
    la $a0, 10
    syscall

    #output element at array index 3
    li $v0, 4
    la $a0, index3
    syscall
    li $v0, 1
    lw $a0, 12($t0)
    syscall
    li $v0, 11
    la $a0, 10
    syscall

    #output element at array index 4
    li $v0, 4
    la $a0, index4
    syscall
    li $v0, 1
    lw $a0, 16($t0)
    syscall
    li $v0, 11
    la $a0, 10
    syscall

    #exit
    li $v0, 10
    syscall
