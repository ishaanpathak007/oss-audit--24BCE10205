#!/bin/bash
# Author: Ishaan Pathak (24BCE10205)
# Purpose: Analyze log files for specific keywords
# Suggested log path for VLC: /var/log/vlc.log

echo "================================================================================"
echo "                 VLC AUDIT - LOG FILE ANALYZER"
echo "================================================================================"

target_log=$1
keyword=$2

# Check if arguments are provided
if [ -z "$target_log" ] || [ -z "$keyword" ]; then
    echo "Usage: $0 <log_file> <keyword>"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

# Check if file exists
if [ ! -f "$target_log" ]; then
    echo "Error: Log file not found!"
    exit 1
fi

echo "Analyzing log file : $target_log"
echo "Searching keyword  : $keyword"
echo "--------------------------------------------------------------------------------"

# Count occurrences (fixed issue)
count=$(tail -n 1000 "$target_log" | grep -c "$keyword")

echo "Total matches found: $count"

echo "--------------------------------------------------------------------------------"
echo "Last 5 matching entries:"
tail -n 1000 "$target_log" | grep "$keyword" | tail -n 5

echo "================================================================================"
