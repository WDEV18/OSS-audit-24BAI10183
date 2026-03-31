#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Devender Singh | Course: Open Source Software

# Define an array of standard system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Define the specific Apache configuration directory for Ubuntu
SOFTWARE_CONF="/etc/apache2"

echo "=========================================="
echo "         Directory Audit Report           "
echo "=========================================="

# Loop through the array of standard system directories
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists
    if [ -d "$DIR" ]; then
        # ls -ld gets directory details; awk extracts field 1 (perms), 3 (owner), 4 (group)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # du -sh calculates size; 2>/dev/null hides access errors; cut extracts just the size number
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------------"
echo "      Apache Specific Audit Section       "
echo "------------------------------------------"

# TODO: Add a section that checks if your software's config directory exists
if [ -d "$SOFTWARE_CONF" ]; then
    APACHE_PERMS=$(ls -ld "$SOFTWARE_CONF" | awk '{print $1, $3, $4}')
    APACHE_SIZE=$(du -sh "$SOFTWARE_CONF" 2>/dev/null | cut -f1)
    
    echo "Found Apache config at : $SOFTWARE_CONF"
    echo "Permissions & Owner    : $APACHE_PERMS"
    echo "Configuration Size     : $APACHE_SIZE"
else
    echo "Error: Apache config directory ($SOFTWARE_CONF) not found."
fi
echo "=========================================="
