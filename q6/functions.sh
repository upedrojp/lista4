#!/bin/bash
function maior {
	NUM=$(cat $1)
	MAIOR=0
	for i in `echo $NUM`;
	do
		if [ $i -gt $MAIOR ]; then
			MAIOR=$i
		fi
	done
	echo "O maior número é '$MAIOR'"
}

function menor {
	num=$(cat $1)
        menor=0
        for i in `echo $num`;
        do
                if [ $i -le $menor ]; then
                        menor=$i
                fi
        done
        echo "O menor número é '$menor'"
}
