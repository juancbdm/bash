#!/usr/bin/env bash

main () {
	if [ "$#" -eq 1 ]; then
        echo "Hello, $*"
    else
        echo "Usage: error_handling.sh <person>"
        exit 1
	fi
}
main "$@"


# Better solution
# if [ $# -ne 1 ]; then
#   echo 'Usage: ./error_handling <person>'
#   exit 1
# fi
# echo "Hello, $1"