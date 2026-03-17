# Faça um programa que leia 3 números inteiros, representando a duração em horas, minutos e segundos e informe essa duração em segundos.

.text
main:
      li $2, 5 # lê a hora, exemplo: 1 hora, 43 minutos e 20 segundos. Hora: 1
      syscall
      move $8, $2
      
      li $2, 5 # lê os minutos, 43 minutos
      syscall
      move $9, $2
      
      li $2, 5 # lê os segundos, 20 segundos
      syscall
      move $10, $2
      
      li $16, 3600 
      li $17, 60
      
      mul $18, $8, $16
      
      mul $19, $9, $17
      
      add $4, $18, $19
      add $4, $4, $10
      
      li $2, 1
      syscall
      
      li $2, 10
      syscall
      
      
      
      