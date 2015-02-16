#!/bin/bash

shopt -s globstar
for file in ./**; do 
    if [[ -f "$file" ]]; then
        dirname="${file%/*}/"
        basename="${file:${#dirname}}"
	ext="${file##*.}"
	#echo basename: "$basename" - dirname "$dirname"
	station_id=${basename%%_*} 
        #mv "$file" "$dirname$station_id.$ext"
	echo $station_id
    fi
done
