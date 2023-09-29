#!/bin/bash

# File and Directory Operations:
# Write a shell script that takes a directory path as input and performs the following operations:

# List all files and directories in the given directory.
# Count the number of files and directories.
# Calculate the total size of all files in the directory.

function memory_usage() {
    mem=0
    for item in $(cat /home/arv/memory)
    do
        mem=$((mem + item))
    done
    mem=$((mem / 1024))
    echo "The total size of the files in the directory is: $mem kb"
}

#list all files and directories in the given directory
echo "The directory $1 is being used: "
ls -l $1 | awk '{print $9}'

#count the number of files and directories
count=$(ls -l $1 | wc -l)
echo "Total number of files available in the directory: $count"



#to store the size of individual files in the directory
ls -l $1 | awk '{print $5}' > /home/arv/memory
memory_usage $1