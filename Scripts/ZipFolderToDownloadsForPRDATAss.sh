#!/bin/bash

if [ $# -ne 2 ] ; then
	echo "Invalid number of arguments"
	echo "Supply number of assignment"
	echo "Followed by filename"
fi

number="$1"
filename="$2"
name="BRPD-$number-alsu-rkri-thll.zip"

echo "Zipping $name to Downloads"
zip -r ~/Downloads/$name $filename

