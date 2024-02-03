# Cuda02: Simple kernel

Note: This example of how kernels work is not very detailed.

The file [cuda_simple_kernel.cuf](https://github.com/MomoInSpace/FortranHPC/tree/main/source/cuda/cuda_simple_kernel/cuda_simple_kernel.cuf) creates a kernel which calculates $Sin(x)^2 + Cos(x)^2 = 1$, for each value of an array a. The kernel looks as follows:

```fortran
module kernels_m
    contains 

    attributes(global) subroutine kernel(a,offset)
        implicit none

    ! Params===================================================================
    real           :: a(*)
    integer, value :: offset
    integer        :: i
    real           :: c, s, x

    ! Body ====================================================================
    i = offset + threadIdx%x + (blockIdx%x-1)*blockDim%x
    x = i; s = sin(x); c = cos(x)
    a(i) = a(i) + sqrt(s**2+c**2)

    end subroutine kernel
end module kernels_m
```

With the variable `a_d(n)` being a device variable `real,device :: a_d(n)` (the memory is on the device, i.e. gpu) one can than simply execute the kernel with 

```fortran
call kernel<<<n/blockSize, blockSize>>>(a_d, 0)
```
