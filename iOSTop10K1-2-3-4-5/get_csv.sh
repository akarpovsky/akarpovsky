#!/bin/bash

csv=""
for file in ./**; do
    if [[ -f "$file" ]]; then
        dirname="${file%/*}/"
        basename="${file:${#dirname}}"
        ext="${file##*.}"
        station_id=${basename%%.*}
	csv+=,"($station_id,\"$station_id.$ext\")"
    fi
done
echo $csv
