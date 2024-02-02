#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --account=bb1153
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=00:05:00
#SBATCH --output=mpi01_thread_number_%A_%a.out

module purge
module load nvhpc/22.5-gcc-11.2.0 openmpi

mpirun -np 4 ./threads.o
