#!/bin/bash

arq=none
while true; do

	echo -e "r - Digite o nome de um arquivo que será processado."
	echo -e "a - Remova todas as letras do arquivo."
	echo -e "b - Remova todos os dígitos do arquivo."
	echo -e "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~."
	echo -e "q - Saia do script"

	read -p 'Digite uma opção: ' opc

	case $opc in
		"r") read -p 'Digite o nome do arquivo: ' arq ;;
		"a") cat $arq | sed -E 's/[a-zA-Z]//g' &> /dev/null && echo -e "oi" || echo -e "Digite a opção r";;
		"b") cat $arq | sed -E 's/[0-9]//g';;
		"c") cat $arq | sed -E 's/\W|_/~/g';;
		"q") break ;;
		*) echo -e "\nOps Sr(a) usuário, digite um valor válido!\n" ;;
	esac
done
	
