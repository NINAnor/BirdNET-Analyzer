#!/bin/bash

OUT_FOLDER=/output/folder
mkdir -p $OUT_FOLDER

# BirdNet analyse uses os.walk and no need to feed the exact folder
docker run \
    -v $PWD:/app \
    -v $OUT_FOLDER:/output \
    birdnet \
    python3 /app/analyze_hpc.py \
        --array_job False \
        --slist /app/species_list.txt