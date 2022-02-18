#!/bin/bash
set -e
xxd $1 | split -b 1GB -d --additional-suffix ".txt" - "$1."
for HEXFILE in $1.*.txt;
    do
        zip -9 $HEXFILE.zip $HEXFILE
        rm $HEXFILE
done
