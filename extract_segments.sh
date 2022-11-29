#!/usr/bin/bash 

OUTPUT=/data/Prosjekter3/16784000_sats_22_51_rosten/

docker run --rm -it --shm-size=10.02gb \
            -v $PWD:/app  \
            -v $OUTPUT:/output \
            birdnet:latest \
            python segments.py