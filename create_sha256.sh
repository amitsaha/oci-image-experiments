#!/bin/bash
# Thanks to Sergiusz Urbaniak for discussions and help with
# using sha256sum

# Given a directory name, this creates a new directory structure:
# sha256/<sha256-of-contents>

f=$1
dirname=`dirname $f`
newsum=$(sha256sum $f | cut -f1 -d' ')
wc -c $f
mv $f "$dirname/sha256-$newsum" 
echo $newsum 

