#!/usr/bin/env bash
main () {
    local result=0
    # $# equals to 2, otherwise thow a error
    [ "$#" -eq 2 ] || error "Usage: hamming.sh <string1> <string2>"
    # compare the 2 length of the strings, if its not equal, throw an error
    [ ${#1} -eq ${#2} ] || error "strands must be of equal length"
    #for each character in string 1
    for ((i=0; i < ${#1}; i++)); do
        #if the character in position "i" on the 1st string is equal to the same characte in the same position on the 2nd string increase the count
        [ "${1:$i:1}" == "${2:$i:1}" ] || ((result++))
    done
    echo "${result}"
}

error (){
    echo "$@"
    exit 1
}

main "$@"
