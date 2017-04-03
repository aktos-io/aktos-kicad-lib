#!/bin/bash

DIR=$(dirname "$(readlink -f "$0")")

KICAD_DATA_DIR="/usr/share/kicad"

# *.pretty, *.kicad_pcb should go to this directory
KICAD_MODULES_DIR="$KICAD_DATA_DIR/modules"

# *.lib, *.dcm should go to this directory
KICAD_LIBRARY_DIR="$KICAD_DATA_DIR/library"
mkdir $KICAD_LIBRARY_DIR 2> /dev/null 
mkdir $KICAD_MODULES_DIR 2> /dev/null 

mkdir tmp-backup-original 2> /dev/null

for i in `find libs -iname "*.pretty"`; do
  NAME=$(basename $i)
  PARENT_NAME=$(basename $(dirname $i))
  TARGET="$KICAD_MODULES_DIR/$PARENT_NAME/$NAME"
  echo "found: $i, ($NAME) (($PARENT_NAME))"
  if true; then
    mkdir "$KICAD_MODULES_DIR/$PARENT_NAME" 2> /dev/null
    mv $TARGET tmp-backup-original 2> /dev/null
    cp -a "$i" "$(dirname $TARGET)"
    chown root:staff $TARGET -R
    chmod 755 $TARGET -R
  fi
done

for i in `find libs -iname "*.lib" -o -iname "*.dcm"`; do
  NAME=$(basename $i)
  PARENT_NAME=$(basename $(dirname $i))
  TARGET="$KICAD_LIBRARY_DIR/$PARENT_NAME/$NAME"
  echo "found: $i, ($NAME)"
  if true; then
    mkdir "$KICAD_LIBRARY_DIR/$PARENT_NAME" 2> /dev/null
    mv $TARGET tmp-backup-original 2> /dev/null
    cp -a "$i" "$(dirname $TARGET)"
    chown root:staff $TARGET -R
    chmod 755 $TARGET -R
  fi
done

