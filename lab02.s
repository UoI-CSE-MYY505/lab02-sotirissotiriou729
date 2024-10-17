
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array    #the memory that the array is located
    li a1, 7   # unsigned, loads the number of unsigned int in array of a0
    li a2, 1    #the 32_bit number im searching
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
    li a3 , 0
    li t2, 4
    slli t1, a1, 2 
    add t1, t1, a0
loop:
    beq a1, zero, notfound
    sub t1, t1 , t2
    lw t0, 0(t1) 
    beq t0, a2, exitloop
    addi a3, a3, 1
    beq a3, a1, notfound
    j loop
notfound:
    li t1, 0
    j exitloop
exitloop:
    add s0, t1, zero
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
