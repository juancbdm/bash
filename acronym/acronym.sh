 #!/bin/bash

# parenthesis "()" are used as array definition
# https://unix.stackexchange.com/questions/217877/single-parenthesis-in-bash-variable-assignment
# match regex unwanted characters and replace with space all words in array
# phrase=(${1//[ -\/:-@\[-\`{-~]/ }) - more clean but not able to exclude apostrophes
phrase=(${1//[$&+,:;=?@#|_<>.^*()%!-]/ })
#for every word in the array add to output varible
for word in "${phrase[@]}"; do
    output+="${word:$i:1}"
done
# uppercase all characteres with "^^"
echo "${output^^}"