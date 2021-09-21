#!/bin/bash

function r {
	read -p 'Digite o nome do arquivo: ' arq
	cat $arq &> /dev/null
	if [ $? != 0 ]; then
		echo -e "\nArquivo digitado não existe!\n"
	fi
}

function a {
	if [ -z $arq ]; then
		echo -e "\nInforme o arquivo na opção "r"\n"
	else
		cat $arq | sed -E 's/[a-zA-Z]//g'
	fi

}
function b {
	if [ -z $arq ]; then
		echo -e "\nInforme o arquivo na opção "r"\n"
	else
		cat $arq | sed -E 's/[0-9]//g'
	fi

}
function c {
	if [ -z $arq ]; then
		echo -e "\nInforme o arquivo na opção "r"\n"
	else
		cat $arq | sed -E 's/\W|_/~/g'
	fi

}


while true; do

	echo -e "r - Digite o nome de um arquivo que será processado."
	echo -e "a - Remova todas as letras do arquivo."
	echo -e "b - Remova todos os dígitos do arquivo."
	echo -e "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~."
	echo -e "q - Saia do script"

	read -p 'Digite uma opção: ' opc

	case $opc in
		"r") r;;
		"a") a;;
		"b") b;;
		"c") c;;
		"q") break ;;
		*) echo -e "\nOps Sr(a) usuário, digite um valor válido!\n" ;;
	esac
done
	
