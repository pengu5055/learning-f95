program read_value
    implicit none
    character :: name

    print *, "Please enter your name: "
    read(*,*) name

    print *, "Your name is: ", name

end program read_value
