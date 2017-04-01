#!/bin/bash 


echo 'export KISYSMOD=~/kicad_sources/library-repos' > /etc/profile.d/kicad.sh
./library-repos-install.sh --install-prerequisites
