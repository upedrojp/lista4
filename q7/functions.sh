#!/bin/bash

function removetr {
	cat $1 | tr '[a-z]' ' '
}
function removesed {
	cat $1 | sed -E 's/[0-9]/ /g'

}       
function subsawk {
	cat $1 | awk 'gsub (/\W|_/, ".")'
}

