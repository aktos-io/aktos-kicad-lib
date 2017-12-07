#!/bin/bash 
wget http://smisioto.no-ip.org/kicad_libs/library/lib_w_connectors.zip
ls *.zip|awk -F'.zip' '{print "unzip "$0" -d "$1}'|sh
rm *.zip
