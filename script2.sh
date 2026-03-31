#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Devender Singh | Course: Open Source Software

# Defining the target package based on your software choice
PACKAGE="apache2" 

echo "=========================================="
echo "        FOSS Package Inspector            "
echo "=========================================="

# Check if the package is installed using dpkg (Ubuntu/Debian standard)
# &> /dev/null hides the system output so we can print our own clean message
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[ STATUS ]: $PACKAGE is installed on this system."
    echo " "
    echo "--- Package Details ---"
    # Pipe the output of dpkg to grep to filter only the Version and Architecture lines
    dpkg -s "$PACKAGE" | grep -E '^Version:|^Architecture:'
    echo "-----------------------"
else
    echo "[ STATUS ]: $PACKAGE is NOT installed."
fi

echo " "
echo "--- Philosophy Note ---"
# Use a case statement to print a short description based on the package name
case "$PACKAGE" in
    apache2|httpd) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql-server|mysql) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    vlc) 
        echo "VLC: Plays anything - built by students in Paris." 
        ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web." 
        ;;
    *) 
        echo "FOSS: Built openly, shared freely, improved collectively." 
        ;;
esac
echo "=========================================="
