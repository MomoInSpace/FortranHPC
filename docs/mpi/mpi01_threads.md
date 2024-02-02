# Simple Threads

The program `thread_number.f90` in [MomoInSpace/FortranHPC/mpi01_threads](https://github.com/MomoInSpace/FortranHPC/tree/main/source/mpi/mpi01_threads) is a simple program which checks if mpi is set up correctly.

To compile, use 

```fortran
mpifort thread_number.f90 -o threads.o
```

To execute:

```fortran
mpirun -np 4 ./threads.o
```

it should give you the output (in random order):

```txt
Hello World from process: 3 of 4
Hello World from process: 1 of 4
Hello World from process: 2 of 4
Hello World from process: 0 of 4
```

If we want to run it as batch script, one can use the `mpi_gpu_quick.sh` job script.
