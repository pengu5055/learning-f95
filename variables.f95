program variables
    implicit none
    integer :: amount
    real :: pi
    complex :: frequency
    character :: initial
    logical :: isOkay

    amount = 10
    pi = 3.141527
    frequency = (1.,-0.5)
    isOkay = .false.
    initial = 'A'
    ! integer :: amount = 1 implies a constant value, this is not normal init of var !

    print *, "Value 'amount': ", amount
    print *, "Value 'isOkay': ", isOkay

end program variables
