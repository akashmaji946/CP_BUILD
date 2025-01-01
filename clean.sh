#!/bin/bash
chmod +x *.sh
# Use the find command to delete all files except .cpp, .c, .txt, and .sh
find . -type f ! \( -name "*.cpp" -o -name "*.c" -o -name "*.txt" -o -name "*.sh" -o -name "*.md" \) -exec rm -f {} \;

# Confirm the cleanup
echo "Cleanup complete."

