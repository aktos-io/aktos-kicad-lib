#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    #echo "Text read from file: $line"
    unzip $line
    { # this is my bash try block

    rm license.txt 
    #save your output

} || { # this is catch block
    echo "no licensce file"
}

done < "$1"
