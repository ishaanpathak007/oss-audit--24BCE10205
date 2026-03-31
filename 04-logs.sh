#!/bin/bash
# Author: ishaanpathak (24BCE10205)
# Purpose: Log File Analyzer
# Suggested log path for Vlc: /var/log/vlc.log

echo "================================================================================"
echo "                   Vlc AUDIT - LOG FILE ANALYZER             "
echo "================================================================================"

target_log=$1
keyword=$2
count=0

echo "Analyzing log file: $target_log"

echo "Searching for keyword: $keyword"

tail -n 1000 $target_log | while read line; do
    if echo "$line" | grep -q "$keyword"; then
        ((count++))
    fi
done

echo "Found $count occurrences of '$keyword'."

echo "Last 5 matches:"
tail -n 1000 $target_log | grep "$keyword" | tail -n 5

echo "================================================================================"