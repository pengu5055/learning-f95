program arrays
    implicit none

    ! 1D integer array:
    integer, dimension(10) :: array1
    ! or equivalently:
    integer :: array2(10)

    ! 2D real array:
    real, dimension(10, 10) :: array3

    ! Custom lower and upper index bounds
    real :: array4(0:9)
    real :: array5(-5:5)

    integer :: i
    array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    ! or array1 = [(i, i = 1, 10)]
    print *, "At index: "
    read(*,*) i

    print *, "Result: ", array1(i)

end program arrays

