subroutine print_matrix(n, m, A)
    implicit none
    integer, intent(in) :: n
    integer, intent(in) :: m 
    real, intent(in) :: A(n, m)   
    integer :: i 
    do i = 1, n
        print *, A(i, 1:m)        
    end do    
end subroutine print_matrix

! Calculate the L2 norm of a vector
function v_norm(n,vec) result(norm)
    implicit none
    integer, intent(in) :: n
    real, intent(in) :: vec(n)
    real :: norm 

    norm = sqrt(sum(vec**2))
end function v_norm
program subfun
    implicit none
    real :: v(9)
    real :: v_norm
    v(:) = 7
    print *, "Vector norm = ", v_norm(9, v)

end program subfun
