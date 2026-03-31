#!/bin/bash
# Author: Ishaan Pathak (24BCE10205)
# Purpose: Display basic system information for VLC audit

echo "================================================================================"
echo "                 VLC AUDIT - SYSTEM IDENTITY REPORT"
echo "================================================================================"

# Fetch system details
echo "Linux Distribution : $(grep PRETTY_NAME /etc/os-release | cut -d '=' -f2 | tr -d '\"')"
echo "Kernel Version     : $(uname -r)"
echo "Current User       : $(whoami)"
echo "Home Directory     : $HOME"
echo "System Uptime      : $(uptime -p)"
echo "Current Date/Time  : $(date)"

echo "--------------------------------------------------------------------------------"
echo "Note: This system runs on open-source software, giving users the freedom to use,"
echo "      study, modify, and distribute the software."
echo "================================================================================"
