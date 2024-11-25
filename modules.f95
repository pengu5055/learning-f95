! Modules are generally seperate files. They need to be compuled prior to their use.
module testModule
    implicit none

    private ! This makes all entities private by default
    public public_var, print_matrix ! Export public entities

    real, parameter :: public_var = 2
    integer :: private_var

contains
    subroutine print_matrix(A)
        real, intent(in) :: A(:,:) ! This will assume a shape

        integer :: i
        do i = 1, size(A,1)
            print *, A(i,:)
        end do
    end subroutine print_matrix
end module testModule

program moduleUse
    use testModule
    ! Explicit import -> use testModule, only: public_var
    ! Aliased import -> use testModule, only printMat=>print_matrix
    implicit none 

    real :: mat(10, 10)
    mat(:, :) = public_var

    call print_matrix(mat)
end program moduleUse
