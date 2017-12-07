#!/bin/bash 
wget -r -np -nH -R "index.html*" -R "robots.txt" http://smisioto.no-ip.org/kicad_libs/
rm robots.txt
