#!/bin/sh

# github api reference
# https://developer.github.com/v3/

# Written By: Brian Konzman Significantly simplied by David Murrell for class


if [ $# -ne 2 ];
	then
	echo ""
	echo "This script will clone a simgle repository from an organization and "
	echo "  checkout the branch mentioned in the second parameter."
	echo "Please provide 2 parameters in this order:"
	echo "1. URL of the repository to be cloned"
	echo "2. The name of the branch to be checked out"
else

	url=$1
	brnch=$2
	
	# Make directory sibling to the one of this script.
	# Make it the current directory.
	
	mkdir -p ../work
	cd ../work
	
	# Clone the repository mentioned in the first parameter
	#   into the work directory and checkout the branch mentioned
	#   in the second parameter, retoring current directory.

	git clone ${url}
	
	for f in ../work/*
		do
			echo "Found work: $f"
			cd $f
			git checkout $brnch
			git branch
			cd ..
		done
fi