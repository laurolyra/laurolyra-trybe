#!/bin/bash
#Eu sou Tryber e... vou ter muito sucesso na programação!"
echo "Digite o nome do arquivo (com extensão): "
read arquivo
tempoMedio=150 
#tempoMedio = palavras/minuto


if [[ $arquivo == *.txt ]];
then
# contar as palavras e calcular o tempo médio de leitura

    numeropalavras=`wc -w $arquivo | awk '{print $1;}'`
    conta=$[$numeropalavras / $tempoMedio]
    echo "Tempo estimado para a leitura de "$arquivo": $conta minutos"

elif [[ -z "$arquivo" ]];
then
   echo "Digite um nome de arquivo válido"
   exit 1
else
    echo "$arquivo não é um arquivo"
fi

# exibir a mensagem
