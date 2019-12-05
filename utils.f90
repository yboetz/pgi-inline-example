
MODULE utils

    implicit none

    public :: pow2


    contains


    subroutine pow2 ( x )

        implicit none

        INTEGER, INTENT(INOUT) :: x

        x = x*x

    end subroutine pow2


END MODULE utils