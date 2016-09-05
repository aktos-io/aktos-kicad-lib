#/bin/bash

cd 3d-shapes
#find . -iname "*.3dshapes" -print0 | while IFS= read -r -d $'\0' line; 
#find . -type d -print0 | while IFS= read -r -d $'\0' line; 

ls -l | awk '{print $9 }' | while IFS= read -ra line;

do 
   new=${line%%.*} 
   echo "$line"
   echo "$new"
   #mv $line $new
   #ln -s ../3d-shapes/$line ../walter/$new
   cp -a $line  ../walter/$new
done


