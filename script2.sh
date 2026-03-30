#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    VERSION=$(python3 --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    python3) echo "Python: an open-source language used in AI, web development, and automation." ;;
    git) echo "Git: distributed version control system." ;;
    vlc) echo "VLC: open-source media player." ;;
    firefox) echo "Firefox: open-source browser focused on privacy." ;;
    *) echo "Unknown package." ;;
esac
