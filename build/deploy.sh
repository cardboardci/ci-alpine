#!/bin/sh
set -e

CURRENT=$(pwd)

cd ../versions/
for dir in *
do
	echo "Building: $dir"
    
    cd $CURRENT
    make VERSION=${dir} build
    make VERSION=${dir} release
done