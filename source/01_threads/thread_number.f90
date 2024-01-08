program Parallel_Stored_Hello
USE OMP_LIB

integer :: thread_id

!$OMP PARALLEL

    PRINT *, “Hello from process: ”, OMP_GET_THREAD_NUM()

!$OMP END PARALLEL

end program
