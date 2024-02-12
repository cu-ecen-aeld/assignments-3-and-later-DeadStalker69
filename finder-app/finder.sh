#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then 
    echo "Enter the right number of parameters. Exactly 2."
    exit 1
fi 

if [ ! -d "$filesdir" ]; then
    echo "The directory path '$filesdir' is not valid."
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"

