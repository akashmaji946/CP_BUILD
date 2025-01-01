#!/bin/bash

# Check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Store the argument in a variable
FILE_NAME=$1
CPP_FILE="$FILE_NAME/$FILE_NAME.cpp"
OUTPUT_FILE="$FILE_NAME/$FILE_NAME.out"
LOG_FILE="$FILE_NAME/time.log"

# Define colors
GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m" # No color

# Check if the .cpp file exists
if [ ! -f "$CPP_FILE" ]; then
    echo -e "${RED}Error: '$CPP_FILE'${NC}"
    exit 1
fi

# remove the old executable
rm -f "$OUTPUT_FILE"
rm -f "$LOG_FILE"
# Attempt to compile the .cpp file
g++ -std=c++20 -O2 -o "$OUTPUT_FILE" "$CPP_FILE" 2> compile.log

# Check if the compilation succeeded
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Build Success.${NC}"
else
    cat compile.log
    echo -e "${RED}Compilation failed. Error message above.${NC}"
    exit 1
fi
