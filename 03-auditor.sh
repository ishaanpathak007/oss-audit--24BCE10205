#!/bin/bash
# Author: Ishaan Pathak (24BCE10205)
# Purpose: Audit important directories for size, permissions, and ownership

# List of directories to check
dirs=("/etc" "/var/log" "/usr/bin" "/home" "/var/www" "/etc/vlc" "/var/log/vlc")

echo "================================================================================"
echo "                 VLC AUDIT - DIRECTORY AUDITOR"
echo "================================================================================"

# Table header
printf "%-20s %-10s %-10s %-10s\n" "Directory" "Size" "Perms" "Owner"
echo "--------------------------------------------------------------------------------"

for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        perms=$(stat -c %a "$dir")
        owner=$(stat -c %U "$dir")

        printf "%-20s %-10s %-10s %-10s\n" "$dir" "$size" "$perms" "$owner"
    else
        printf "%-20s %s\n" "$dir" "Not Found"
    fi
done

echo "================================================================================"
