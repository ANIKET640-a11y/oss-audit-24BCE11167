#!/bin/bash
# Script 1: System Identity Report
# Author: ANIKET KUMAR SINGH | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="ANIKET KUMAR SINGH"
REG_NUMBER="24BCE11167"         
SOFTWARE_CHOICE="Linux Kernel"   

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Get Linux distribution name
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

# License message (Linux uses GPL)
LICENSE="Python Software Foundation (PSF) License"

# --- Display ---
echo "=========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Reg: $REG_NUMBER | VIT Bhopal University"
echo "=========================================="
echo ""
echo "Welcome to your Linux System!"
echo ""
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE_TIME"
echo ""
echo "This system is powered by open-source software."
echo "License      : $LICENSE"
echo ""
echo "Software Focus: $SOFTWARE_CHOICE"
echo "=========================================="
