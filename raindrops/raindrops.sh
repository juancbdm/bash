#!/usr/bin/env bash

OUTPUT=''
if [ "$(( $1 % 3 ))" -eq 0 ]; then
    OUTPUT+="Pling"
fi
if [ "$(( $1 % 5 ))" -eq 0 ]; then
    OUTPUT+="Plang"
fi
if [ "$(( $1 % 7 ))" -eq 0 ]; then
    OUTPUT+="Plong"
fi

if [ "$OUTPUT" == '' ]; then
    echo "$1"
else
    echo $OUTPUT
fi

# Better solution
# (( $1 % 3 )) || result+=Pling
# (( $1 % 5 )) || result+=Plang
# (( $1 % 7 )) || result+=Plong
# echo ${result:-$1}