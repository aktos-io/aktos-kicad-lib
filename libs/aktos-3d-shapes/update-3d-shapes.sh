#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


### SELECT THE KICAD DIRECTORY ###

KICAD_3D_DIR="/usr/share/kicad/modules/packages3d"
#KICAD_3D_DIR="/usr/local/share/kicad/modules/packages3d"

echo "KICAD DIR IS: $KICAD_3D_DIR"
if [[ $(id -u) > 0 ]]; then 
    echo "this tool needs root privileges"
    f="$DIR/$(basename $0)"
    echo "$f"
        sudo $f
        exit
fi


cp -a $DIR/walter $KICAD_3D_DIR
cp -a $DIR/3d-shapes/* $KICAD_3D_DIR
