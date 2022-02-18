#!/bin/bash
set -e
for ZIPFILE in $1.*.txt.zip
    do
        unzip $ZIPFILE
done
cat $1.*.txt | xxd -r > $1
rm $1.*.txt
