#!/bin/bash

# Check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Store the argument in a variable
FILE_NAME=$1
OUTPUT_FILE="$FILE_NAME/out.txt"
EXPECTED_FILE="$FILE_NAME/exp.txt"

# Define colors
GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m" # No color

# Check if the output file exists
if [ ! -f "$OUTPUT_FILE" ]; then
    echo -e "${RED}Error: '$OUTPUT_FILE'${NC}"
    exit 1
fi

# Check if the expected file exists
if [ ! -f "$EXPECTED_FILE" ]; then
    echo -e "${RED}Error: '$EXPECTED_FILE'${NC}"
    exit 1
fi

# Compare the files and report differences
if diff "$OUTPUT_FILE" "$EXPECTED_FILE" > /dev/null; then
    echo -e "${GREEN}Output matches.${NC}"
else
    echo -e "${RED}Mismatch:${NC}"
    diff "$OUTPUT_FILE" "$EXPECTED_FILE"  # This will show the differences between the files
fi
