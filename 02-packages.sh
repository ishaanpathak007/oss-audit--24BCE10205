#!/bin/bash
# Author: Ishaan Pathak (24BCE10205)
# Purpose: Check VLC installation and display FOSS details

PACKAGE_NAME="vlc"

echo "================================================================================"
echo "                 VLC AUDIT - PACKAGE INSPECTOR"
echo "================================================================================"

# Get OS name
OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d '=' -f2 | tr -d '\"')

# Check if VLC is installed
if dpkg -s "$PACKAGE_NAME" &> /dev/null; then
    echo "Status  : $PACKAGE_NAME is INSTALLED on this $OS_NAME system."
    echo "Version : $(dpkg -s "$PACKAGE_NAME" | grep Version | cut -d ' ' -f2)"
    
    echo "--------------------------------------------------------------------------------"
    echo "FOSS Philosophy Notes:"
    echo " - VLC         : A free and open-source media player that supports almost all formats."
    echo " - Firefox     : An open-source web browser focused on privacy and user control."
    echo " - LibreOffice : A powerful open-source office suite as an alternative to paid tools."
    echo " - GIMP        : An open-source image editor with advanced features."
    echo "================================================================================"
else
    echo "Status  : $PACKAGE_NAME is NOT installed on this system."
    echo "================================================================================"
fi
