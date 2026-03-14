# faça um programa para ler duas notas e calcular a media de um aluno a partir de sua notas

.text
main:
     li $2, 5 #ler a primeira nota
     syscall
     
     move $8, $2 # move a nota 1 para o registrador 8
     
     li $2, 5 # lê a segunda nota
     syscall
     
     move $9, $2 # move a nota 2 para o registrador 9
     
     add $8, $8, $9 #soma as duas notas e armazena no registrador 8
     srl $4, $8, 1
     
     li $2, 1 #imprime o conteúdo do registrador 
     syscall
     
     li $2, 10 # encerra o programa
     syscall
