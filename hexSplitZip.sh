#!/bin/bash
set -e

INFILE=$1
OUTNAME=$2

xxd $1 | split -b 1GB -d --additional-suffix ".txt" - "$OUTNAME"

while read FILE;
do zip -m9 $FILE "$FILE.txt";
done <<< $(ls $OUTNAME*.txt | cut -d "." -f 1)
