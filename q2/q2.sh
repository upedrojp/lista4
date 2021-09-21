#!/bin/bash

while read lin; do
	nomes=$(echo $lin | awk '{print $1}')
	numeros=$(echo $lin | awk '{print $3}')
	while read lin2; do
		nomes2=$(echo $lin2 | awk '{print $1}')
		numeros2=$(echo $lin2 | awk '{print $3}')
		if [ "echo $lin" != "echo $lin2" ]; then
			if [ "echo $nomes" == "echo $nomes2" ]; then
				numeros=$(( $numeros + $numeros2 ))
			fi
		fi
	done < $1
	echo -e "\n$nomes baixou $numeros\n" >> /tmp/save

done < $1

cat /tmp/save | sort -n | uniq
rm /tmp/save
