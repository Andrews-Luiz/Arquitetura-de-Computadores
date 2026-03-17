.text
main:
     li $2, 12 # lê um caractere
     syscall
     
     move $8, $2
     
     li $16, 32
     
     sub $4, $8, $16
     
     li $2, 11
     syscall
     
     li $2, 10
     syscall
     
     
     