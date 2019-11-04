#!/bin/bash   
lag=$(($teste * 1))
echo  -e "Digite a opção do jogo você quer saber o ping:\n1)DOTA\n2)LOL"
read JOGO
echo "testando ping..."
if [ $JOGO = 1 ];
then 
    teste=$(ping -c 6 209.197.25.1 | tail -1| awk '{print $4}' | cut -d '/' -f 2)
    echo "Seu ping atual é de $teste ms"
    if [ $lag > 100 ]; then
        echo "A conexão não está tão boa pra jogo. Melhor nem logar!"
    else
        echo "Tudo pronto! Só vai!"
    fi
fi
if [ $JOGO = 2 ];
then
    teste=$(ping -c 6 104.160.152.3 | tail -1| awk '{print $4}' | cut -d '/' -f 2)
    echo "Seu ping atual é de $teste ms"
    if [ $lag > 100 ]; then
        echo "A conexão não está tão boa pra jogo. Melhor nem logar!"
    else
        echo "Tudo pronto! Só vai!"
    fi
fi



