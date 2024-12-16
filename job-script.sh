#!/bin/bash
#SBATCH --job-name=HPC-Test
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --time=01:00:00
#SBATCH --output=job-output-%j.txt

module load mpi
mpirun -np 64 ./hpl-benchmark
