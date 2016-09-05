#!/bin/bash 

REPO="$HOME/dev/circuit-design/aktos-kicad-lib"
cd "$REPO"
git pull 
sudo ./install.sh
