#!/bin/sh
if [ "`whoami`" = "root" ] ; then
   cp ./adobe /usr/share/fonts/ -R
   cp ./openfonts /usr/share/fonts/ -R
   fc-cache -f -v
else
    echo "Needs Root!!!"
fi
