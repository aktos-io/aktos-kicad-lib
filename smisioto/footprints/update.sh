#!/bin/bash 

echo "Standard pin strips"
wget http://smisioto.no-ip.org/kicad_libs/modules/mod_pin_strip.zip
#wget http://smisioto.no-ip.org/kicad_libs/packages3d/3d_pin_strip.zip
ls *.zip|awk -F'.zip' '{print "unzip "$0" -d "$1}'|sh

rm *.zip
