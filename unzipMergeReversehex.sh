#!/bin/bash
set -e
for ZIPFILE in $1.*.txt.zip
    do
        unzip $ZIPFILE
done
cat $1.*.txt | xxd -r > $1
sha256sum -c $1_sha256.txt
rm $1.*.txt $1_sha256.txt
