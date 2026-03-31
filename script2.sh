#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: version control system that powers open collaboration" ;;
    vlc) echo "VLC: plays any media freely" ;;
    apache2) echo "Apache: backbone of web servers" ;;
    mysql) echo "MySQL: database for millions of apps" ;;
    *) echo "Unknown package" ;;
esac
