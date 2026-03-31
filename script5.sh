#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Devender Singh | Course: Open Source Software

# --- Alias Concept Demonstration ---
# To make this script run by just typing 'manifesto', 
# add this line to your ~/.bashrc file:
# alias manifesto='~/script5.sh'

echo "=========================================="
echo "    Open Source Manifesto Generator       "
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Generating your personalized manifesto..."
sleep 1 

echo "------------------------------------------" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO          " >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"

echo "Myself Devender Singh, On this day, $DATE, I declare my commitment to the open-source philosophy. Every day, tools like $TOOL empower my work. To me, the essence of this movement is $FREEDOM. In that spirit, I pledge to one day build and share $BUILD with the world." >> "$OUTPUT"

echo "------------------------------------------" >> "$OUTPUT"

echo " "
echo "[*] Manifesto successfully saved to $OUTPUT"
echo " "

cat "$OUTPUT"
echo "=========================================="
