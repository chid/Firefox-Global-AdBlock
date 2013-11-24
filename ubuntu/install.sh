#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

mkdir /usr/share/mozilla/extensions/{d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d}
cd /usr/share/mozilla/extensions/"{d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d}"
wget --no-check-certificate https://addons.mozilla.org/downloads/latest/1865/adblock_plus-1.1.xpi
unzip adblock_plus-1.1.xpi

echo "Installed"

echo "If you wish to share the pattern files accross profiles please use https://help.ubuntu.com/community/UbuntuLTSP/AdblockPlusGlobalInstall"
