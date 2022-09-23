#!/bin/bash

echo "=====Pulling"
git pull

if [ $# -eq 0 ] ; then
	echo "==========="
	echo "No message was provided"
	echo "Aborting..."
	echo "==========="
	exit 0
fi

message="$1"

echo "=====Staging"
git add .

echo "=====Committing with message: '$message'"
git commit -m "$message"

echo "=====Pushing"
git push

