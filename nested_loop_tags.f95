program nested_tags
    implicit none
    integer :: i, j

    outer_loop: do i = 1, 10
        inner_loop: do j = 1, 10
            if ((j + i) == 7) then
                print *, "I=", i, " J=", j
                ! cycle outer_loop
            end if
        end do inner_loop
    end do outer_loop
end program nested_tags
