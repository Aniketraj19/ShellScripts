#!/bin/bash

# File and Directory Operations:
# Write a shell script that takes a directory path as input and performs the following operations:

# List all files and directories in the given directory.
# Count the number of files and directories.
# Calculate the total size of all files in the directory.

function memory_usage() {
    mem=0
    for item in $1
    do
        size=$(stat -c %s "$item")
        mem=$((mem + size))
    done
    echo "The total size of the files in the directory is: $mem bytes"
}


echo "The directory $1 is being used: "
ls -l $1 

ls -l $1 | wc -l

ls -l $1 | awk '{print $5}' > /home/arv/memory
memory_usage $1