#!/usr/bin/env bash

# Input video filename
input_file="input.mp4"

# Video dimensions
width="256"
height="256"

# Output directory for extracted frames
OUT_DIR=backgrounds

while true; do

    if test -d $OUT_DIR; then
        rm $OUT_DIR/*.*
        ffmpeg -i $input_file -filter:v scale=w=$width:h=$height:force_original_aspect_ratio=increase,crop=$width:$height,fps=10 backgrounds/background%d.png
        break
    else
        mkdir $OUT_DIR
        ffmpeg -i $input_file -filter:v scale=w=$width:h=$height:force_original_aspect_ratio=increase,crop=$width:$height,fps=10 backgrounds/background%d.png
    fi
done
