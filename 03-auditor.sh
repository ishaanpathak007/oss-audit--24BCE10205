#!/bin/bash
# Author: ishaanpathak (24BCE10205)
# Purpose: Disk and Permission Auditor

dirs=("/etc" "/var/log" "/usr/bin" "/home" "/var/www" "/etc/vlc" "/var/log/vlc")

echo "================================================================================"
echo "                   Vlc AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo -e "$dir\t$(du -sh $dir | cut -f1)\t$(stat -c %a $dir)\t$(stat -c %U $dir)"
    else
        echo "$dir does not exist."
    fi
done

echo "================================================================================"