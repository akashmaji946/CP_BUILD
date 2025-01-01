#!/bin/bash

# Check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Store the argument in a variable
DIR_NAME=$1

# Create the directory
mkdir -p "$DIR_NAME"

# Check if the directory was created successfully
if [ $? -ne 0 ]; then
    echo "Failed: $DIR_NAME"
    exit 1
fi

# Create the files inside the directory
touch "$DIR_NAME/$DIR_NAME.cpp" "$DIR_NAME/in.txt" "$DIR_NAME/out.txt" "$DIR_NAME/exp.txt"

# Verify if the files were created
if [ $? -eq 0 ]; then
    echo "Fail: $DIR_NAME"
else
    echo "Success: $DIR_NAME"
    exit 1
fi

