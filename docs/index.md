# HPC Fortran

Source Code on [MomoInSpace/FortranHPC](https://github.com/MomoInSpace/FortranHPC)

```{toctree}
:maxdepth: 2

MPI Fortran <./mpi/init.md>
CUDA Fortran <./cuda/init.md>
```

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

## Further Reading and Sources

Many code example are either copies or modifications from other sources. They will be made clear at the start of the scripts or in the respective documentation. Nethertheleass here are some sources and further reading:

* [CUDA Fortran for Scientists and Engineers](https://www.sciencedirect.com/book/9780124169708/cuda-fortran-for-scientists-and-engineers)
* [Modern Fortran explained: incorporating Fortran](https://pdfroom.com/books/modern-fortran-explained-incorporating-fortran-2018/jN2R0oALdvW)
* [MPI-Fortran Docs](https://curc.readthedocs.io/en/latest/programming/MPI-Fortran.html)
