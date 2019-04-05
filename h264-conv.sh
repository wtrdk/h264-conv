#!/bin/bash

DIRECTORY="h264"

if [ ! -d "$DIRECTORY" ]; then
    mkdir "$DIRECTORY" # Control will enter here if $DIRECTORY doesn't exist.
fi

for i in *.mkv; do
    
    ffmpeg -i "$i" -map 0 -c copy -c:v libx264 -crf 23 -preset medium "$DIRECTORY"/"$i"
    
done