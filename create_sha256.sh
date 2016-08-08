#!/bin/bash
# Thanks to Sergiusz Urbaniak

f=$1
dirname=`dirname $f`
newsum=$(sha256sum $f | cut -f1 -d' ')
wc -c $f
mv $f "$dirname/sha256-$newsum" 
echo $newsum 

