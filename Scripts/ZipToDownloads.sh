#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Invalid number of arguments"
	echo "Supply filename"
fi

filename="$1"

echo "Zipping $filename to Downloads"
zip -r ~/Downloads/$filename.zip $filename
