#!/bin/bash
set -e
xxd $1 | split -b 1GB -d --additional-suffix ".txt" - "$1."
for HEXFILE in $1.*.txt;
    do
        zip -m9 $HEXFILE.zip $HEXFILE
done
sha256sum $1 > $1_sha256.txt
zip -mu $1.00.txt.zip $1_sha256.txt
