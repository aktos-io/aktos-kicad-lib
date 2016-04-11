#!/bin/bash 

REPO="$HOME/kicad_sources/kicad-libs/aktos-kicad-lib"
cd "$REPO"
git pull 
sudo ./install.sh
