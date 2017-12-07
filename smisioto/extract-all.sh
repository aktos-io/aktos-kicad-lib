#!/bin/bash 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Searching for .zip files..."
count=0
while read -rd $'\0' i; do
    count=$((count+1))
    echo "Found zip file: $i"
    echo $i | awk -F'.zip' '{print "unzip "$0" -d "$1}'|sh
    rm $i
done < <( find $DIR -type f -iname "*.zip" -print0 )

if [[ $count > 0 ]]; then
    echo "Extracted $count libraries in total"
else
    echo "No zip files found..."
fi
