#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/footprints
./update.sh
cd $DIR/libraries
./update.sh
