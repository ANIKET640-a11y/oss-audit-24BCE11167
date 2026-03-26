#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: ANIKET KUMAR SINGH

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "       Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "--------------------------------------"
echo " Checking Software Config Directory"
echo "--------------------------------------"


CONFIG_DIR="$HOME/.config"

if [ -d "$CONFIG_DIR" ]; then
    echo "Config directory exists: $CONFIG_DIR"
    ls -ld $CONFIG_DIR
else
    echo "Config directory not found"
fi

echo "======================================"
