# Faça um programa que leia um inteiro entre 0 e 999 e imprima o escrito de trás para frente. Exemplo: 483 gera uma saída 383

.text
main:
     li $2, 5 # lê um inteiro, exemplo 483
     syscall
     
     move $8, $2
     
     li $16, 100
     li $17, 10
     li $18, 1
     
     div $8, $16 # 483 dividido por 100. Q = 4, R = 83
     mfhi $9 #83
     mflo $12 #4
     
     div $9, $17 # 83 div por 10. Q = 8, R = 3[
     mfhi $10 #3
     mflo $13 #8
     
     div $10, $18 # 3 div por 1. q = 3, r = 0
     mflo $14
     
     # impressões ao contrário
     
     move $4, $14
     li $2, 1
     syscall # imprime o 3
     
     move $4, $13
     li $2, 1
     syscall # imprime o 8
     
     move $4, $12
     li $2, 1
     syscall # imprime o 4
     
     li $2, 10
     syscall # encerra o programa
     
     