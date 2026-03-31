#!/bin/bash
# Author: ishaanpathak (24BCE10205)
# Purpose: Open Source Manifesto Generator

echo "================================================================================"
echo "                   Vlc AUDIT - MANIFESTO GENERATOR             "
echo "================================================================================"

echo "Please answer the following questions to generate your open-source manifesto:"
read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "Why do you support open-source software? " reason

echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, which has inspired me to contribute to the community. I support open-source software because $reason." > $name.txt

echo "Your manifesto has been saved to $name.txt."

echo "================================================================================"