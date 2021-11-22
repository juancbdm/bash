#!/usr/bin/env bash

# For each digit
for ((i=0; i < ${#1}; i++)); do
	# sum the power of the digit with the lenght of the number pass
	num=$(( num + $(("${1:$i:1}" ** ${#1})) ))
done

# if the number given is equal to the sum echo true, else false
[ "$1" -eq "$num" ] && echo "true" || echo "false" 
