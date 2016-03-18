# INSTALL and USE updater 

```
cp update-aktos-kicad-lib.sh /somefolder/in-your-PATH-variable/
chmod +x ~/bin/update-aktos-kicad-lib.sh
```

Then whenever you need to update library, type the following in any terminal window: 

```
$ update-aktos-kicad-lib.sh
```

# INSTALL

run `sudo ./install.sh`

## In order to add Eeschema:

Go to `eeschema > preferences > component libraries >> Add` , select all new libraries, click OK.

## In order to add PcbNew:

There are two ways:

  1. Go to Footprint Editor > Preferences > Footprint Libraries Wizard >
   ...> Files On My Computer > (find the *.pretty folders) > Next > Confirm > OK
   Do that for each *.pretty folder inside repository.



  2. Go to Footprint Editor > Preferences > Footprint Libraries Manager >
   Append a library by specifying a NAME and /path/to/components.pretty folder.  
