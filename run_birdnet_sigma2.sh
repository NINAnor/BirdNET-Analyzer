#!/bin/bash

#SBATCH --account=nn8055k --job-name=birdnet_run
#SBATCH --time=72:00:00
#SBATCH --mem=64g --cpus-per-task=4
#SBATCH --array=1-50

cd /cluster/projects/nn8055k

OUT_FOLDER=/cluster/projects/nn8055k/BIRDNET_RESULTS
mkdir -p $OUT_FOLDER

# BirdNet analyse uses os.walk and no need to feed the exact folder
singularity exec \
    --bind /cluster/projects/nn8055k:/cluster/projects/nn8055k/ \
    /cluster/projects/nn8055k/BirdNET-Analyzer/birdnet.sif \
    python3 /cluster/projects/nn8055k/BirdNET-Analyzer/analyze_hpc.py --workers 50 --worker_index $(($SLURM_ARRAY_TASK_ID -1)) --array_job True --slist species_list.txt