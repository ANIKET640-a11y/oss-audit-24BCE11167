#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: ANIKET KUMAR SINGH

PACKAGE="python3"   

echo "===================================="
echo "   FOSS Package Inspector"
echo "===================================="

# Check if package is installed (Debian/Ubuntu)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    echo ""

    # Show version, license, summary
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'

else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for philosophy note
case $PACKAGE in
    apache2)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql-server)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    vlc)
        echo "VLC: plays anything — built by open source community"
        ;;
    firefox)
        echo "Firefox: fighting for a free and open web"
        ;;
    python3)
        echo "Python: a community-driven language powering modern development"
        ;;
    *)
        echo "Unknown package — no philosophy note available"
        ;;
esac

echo "===================================="
