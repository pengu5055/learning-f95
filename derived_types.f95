program dtype
    implicit none
    ! The equivalent of a C struct
    type :: t_pair
        ! sequence -> this will declare that members should only be accessed in same order as def
        ! meaning pair = t_pair(1, 0.4) for eg.
        integer :: i ! = value for default init
        real :: x 
    end type

    ! Declare
    type(t_pair) :: pair 

    ! Initialize
    pair%i = 1 
    pair%x = 0.5
end program dtype
