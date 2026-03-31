#!/bin/bash
# Author: ishaanpathak (24BCE10205)
# Purpose: FOSS Package Inspector

# Detect Linux distribution and define package name
if [ -f /etc/debian_version ]; then
    PACKAGE_NAME="vlc"
else
    PACKAGE_NAME="vlc"
fi

# Check installation status and extract version
if dpkg -s $PACKAGE_NAME &> /dev/null; then
    echo "================================================================================"
    echo "                   Vlc AUDIT - PACKAGE INSPECTOR                "
    echo "================================================================================"
    echo "Status: $PACKAGE_NAME is INSTALLED on this $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2-) system."
    echo "Version: $(dpkg -s $PACKAGE_NAME | grep Version | cut -d ' ' -f2-)"
    echo "--------------------------------------------------------------------------------"
    echo "FOSS Philosophy Notes:"
    echo " - Vlc: A free and open-source media player that plays most multimedia files."
    echo " - Firefox: A free and open-source web browser that promotes user freedom and privacy."
    echo " - LibreOffice: A free and open-source office suite that provides an alternative to proprietary software."
    echo " - GIMP: A free and open-source raster graphics editor that offers a wide range of features and tools."
    echo "================================================================================"
else
    echo "$PACKAGE_NAME is NOT installed on this system."
fi