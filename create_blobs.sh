#!/bin/bash
# Thanks to Sergiusz Urbaniak for discussions and help with
# using sha256sum

# Given a directory name, this creates a new directory structure:
# sha256/<sha256-of-contents>

$f=$1
newsum=$(sha256sum $f | cut -f1 -d' ')
wc -c $f
mkdir -p sha256
cp -r $f sha256/contents
mv sha256/contents sha256/$newsum 
