program main

  USE utils

  implicit none

  REAL, SAVE ::     &  ! timer indices
  itim_start_tot, itim_end_tot, &
  itim_start, itim_end

  INTEGER :: data(1000000000)
  integer :: i, length

  !======================================

  length = SIZE(data, DIM=1)
  data(:) = 2

  PRINT *, "data    :", data(1:5)

  CALL CPU_TIME(itim_start_tot)

  DO i = 1, length
    CALL pow2( data(i) )
  ENDDO

  CALL CPU_TIME(itim_end_tot)

  PRINT *, "data    :", data(1:5)
  PRINT *, "T total :", itim_end_tot - itim_start_tot

end program main
