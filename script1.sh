#!/bin/bash
# Script 1: System Identity Report
# Author: Devender Singh | Course: Open Source Software

# --- Variables ---
# Storing static strings in variables for easy configuration
STUDENT_NAME="Devender Singh" 
SOFTWARE_CHOICE="Apache HTTP Server" 

# --- System info ---
# Using command substitution $() to run commands and store their output
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)

# Extracting the distribution name from the os-release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)

# Getting the current date and time
CURRENT_DATE=$(date)

# --- Display ---
# Using echo and basic output formatting to create a clean UI
echo "=========================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "=========================================="
echo "Software   : $SOFTWARE_CHOICE"
echo "OS/Distro  : $DISTRO"
echo "Kernel     : $KERNEL"
echo "User       : $USER_NAME"
echo "Home Dir   : $HOME_DIR"
echo "Uptime     : $UPTIME"
echo "Date/Time  : $CURRENT_DATE"
echo "------------------------------------------"
echo "License Note: The core Linux kernel powering"
echo "this operating system is distributed under"
echo "the GNU General Public License v2 (GPLv2)."
echo "=========================================="
