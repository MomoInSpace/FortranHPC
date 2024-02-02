# HPC Fortran

## Resources

To allocate the modules on levante, we use the commands below. As we want to sometimes use an interactive node for testing, we will also move to an interactive node:

```bash
module load git nvhpc/22.5-gcc-11.2.0 python3 fftw gcc openmpi
salloc -p gpu -A [user] --gpus=4 -t 480 --exclusive -N1
```

Alternatively, quick tests can be done with `srun`, e.g.

```bash
srun --ntasks=4 --ntasks_per_node=2 --cpus_per_task=4 ./my_program
```

The compiler we use is called `nvfortran`, for mpi cases we use `mpifort`

https://curc.readthedocs.io/en/latest/programming/MPI-Fortran.html
