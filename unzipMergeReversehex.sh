#!/bin/bash
set -e

INNAME=$1
OUTFILE=$2

while read FILE;
do unzip $FILE;
done <<< $(ls "$INNAME"*.zip)
cat "$INNAME"*.txt | xxd -r > $OUTFILE
rm "$INNAME"*.txt
