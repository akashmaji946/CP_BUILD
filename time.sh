#!/bin/bash

# Check if the argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Store the argument in a variable
FILE_NAME=$1
EXECUTABLE="$FILE_NAME/$FILE_NAME.out"
INPUT_FILE="$FILE_NAME/in.txt"
OUTPUT_FILE="$FILE_NAME/out.txt"
LOG_FILE="$FILE_NAME/time.log"

# Define colors
GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m" # No color

# Check if the executable exists
if [ ! -f "$EXECUTABLE" ]; then
    echo -e "${RED}Error:'$EXECUTABLE'${NC}"
    exit 1
fi

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo -e "${RED}Error:'$INPUT_FILE'${NC}"
    exit 1
fi

# Run the executable with input and output redirection, logging runtime
{ /usr/bin/time -p "./$EXECUTABLE" < "$INPUT_FILE" > "$OUTPUT_FILE"; } >1 2> "$LOG_FILE"

# Check if the program ran successfully
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Execution Success.${NC}"
    # echo "Output (also written to $OUTPUT_FILE):"
else
    echo -e "${RED}Execution failed.${NC}"
    # echo "Error log:"
    cat runtime.log
    exit 1
fi
