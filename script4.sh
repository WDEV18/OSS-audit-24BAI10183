#!/bin/bash
# Script 4: Log File Analyzer
# Author: Devender Singh | Course: Open Source Software
# Usage: ./script4.sh <logfile_path> [keyword]

# Accept the target file and search term via command-line arguments
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if $2 is not provided
COUNT=0

echo "=========================================="
echo "            Log File Analyzer             "
echo "=========================================="

# Do-while style retry loop: bash uses a true loop with a break condition
while true; do
    if [ ! -f "$LOGFILE" ]; then
        echo "[!] Error: File '$LOGFILE' not found."
    elif [ ! -s "$LOGFILE" ]; then
        echo "[!] Error: File '$LOGFILE' is empty."
    else
        # File exists and is not empty; break the loop and proceed
        break
    fi
    
    # Prompt the user to enter a new path if the first one failed
    read -p "Please enter a valid log file path: " LOGFILE
done

echo "[*] Analyzing '$LOGFILE' for keyword: '$KEYWORD'..."

# Read the file line by line using a while-read loop
while IFS= read -r LINE; do
    # Use if-then inside the loop to check for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter variable
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Result: Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------"

# Print the last 5 matching lines using tail + grep
if [ "$COUNT" -gt 0 ]; then
    echo "Preview of the last 5 occurrences:"
    # grep filters the lines, tail -n 5 grabs only the bottom five
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

echo "=========================================="
