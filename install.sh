#!/bin/sh

# TODO: Clone the repo
# TODO: Set a location for the repo

. ./functions/all.sh

for file in install/*.sh
do
	puts "Running $file..."
	cmd $file
done
