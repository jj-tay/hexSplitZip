# hexSplitZip

## How to use

1. Make the script files executable by `chmod +x hexSplitZip.sh` and `chmod +x unzipMergeReversehex.sh`.

2. Say you want to split the file `sample.txt`, then run `./hexSplitZip.sh sample.txt`. This will produce zipped files with names that look like `sample.txt.00.zip`.

3. When you want to reassemble the file, run `./unzipMergeReversehex.sg sample.txt`. This will take the zipped files and output `sample.txt`.

## Tips

Compute checksums of the file to verfiy the integrity of the file.
