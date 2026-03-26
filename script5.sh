#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: ANIKET KUMAR SINGH

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

echo "Answer three questions to generate your manifesto."
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto paragraph
echo "----------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "On $DATE, I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL reminds me that software should be about $FREEDOM." >> $OUTPUT
echo "I aspire to build $BUILD and share it freely with the world," >> $OUTPUT
echo "contributing to a future driven by collaboration and transparency." >> $OUTPUT
echo "" >> $OUTPUT
echo "- $(whoami)" >> $OUTPUT

# Alias concept (example, not executed)
# alias runmanifesto='./script5.sh'

# Show output
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
