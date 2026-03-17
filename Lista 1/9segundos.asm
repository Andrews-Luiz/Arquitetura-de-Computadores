# Pegue um número em segundos, e transforme ele no formado h:m:s. Exemplo: 375

.text
main:
     li $2, 5 # lê o número digitado pelo usuário
     syscall
     move $8, $2
     
     li $16, 3600
     li $17, 60
     
     div $8, $16
     mflo $12 # horas
     mfhi $9
     
     div $9, $17
     mflo $13 # minutos
     mfhi $14 # segundos
     
     move $4, $12
     li $2, 1
     syscall
     li $2, 11
     li $4, ':'
     syscall
     
     move $4, $13
     li $2, 1
     syscall
     li $2, 11
     li $4, ':'
     syscall
     
     move $4, $14
     li $2, 1
     syscall
     li $2, 11
     li $4, ' '
     syscall
     
     li $2, 10
     syscall
     
     
     
     
     
     
     
     
     