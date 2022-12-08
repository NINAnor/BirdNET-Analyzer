# Implementation of Pyfilesystem for BirdNET: run BirdNET on HPC for faster results

This repository provide the means of using BirdNET on HPCs (i.e. supercomputers) by leveraging Pyfilesystem. If you use BirdNET please cite:

```
@article{kahl2021birdnet,
  title={BirdNET: A deep learning solution for avian diversity monitoring},
  author={Kahl, Stefan and Wood, Connor M and Eibl, Maximilian and Klinck, Holger},
  journal={Ecological Informatics},
  volume={61},
  pages={101236},
  year={2021},
  publisher={Elsevier}
}
```

## How to run the scripts

### On HPC:

Pull the image as a `.sif` file for compliance with `singularity`

```
singularity pull birdnet.sif ghcr.io/ninanor/birdnet-analyzer:main
```

Provided the `config` file has been updated and that the HPC uses `TORQUE` run:

```
qsub run_birdnet_hpc.sh
```

### Locally

Pull the docker image:

```
docker pull ghcr.io/ninanor/birdnet-analyzer:main
```

Provided the `config` has been updated (especially `CONNECTION_STRING` set to `False`) run:

```
./run_birdnet_local.sh
```