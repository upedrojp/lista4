#!/bin/bash

source functions.sh 

case $1 in
	"a") echo $(removetr $2) ;;
	"b") echo $(removesed $2) ;;
	"c") echo $(subsawk $2) ;;
esac
