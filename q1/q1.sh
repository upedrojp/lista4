#!/bin/bash

cat $1 | cut -d " " -f 1,2,3 > meninos.txt
cat $1 | cut -d ' ' -f9,10,11,12,13,14,15,16,17,18,19 | tr -s [:space:] > meninas.txt

