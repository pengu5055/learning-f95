function abs2(x) result(value)
    use types, only: dp
    implicit none
    complex(dp), intent(in) :: x
    real(dp) :: value

    value = real(x, dp)**2 + aimag(x)**2
end function abs2

program Mandelbrot
    use types, only: dp
    use constants, only: I
    use utils, only: savetxt
    use mesh, only: linspace, meshgrid
    implicit none

    real(dp) :: abs2
    integer, parameter :: ITER = 1000
    integer, parameter :: DENSITY = 1000
    real(dp) :: x_min, x_max, y_min, y_max, bound
    real(dp), dimension(DENSITY, DENSITY) :: x, y
    complex(dp), dimension(DENSITY, DENSITY) :: c, z
    integer, dimension(DENSITY, DENSITY) :: fractal
    integer :: n, m, l
    x_min = -2.68_dp
    x_max = 1.32_dp
    y_min = -1.5_dp
    y_max = 1.5_dp
    bound = 100.0_dp

    call meshgrid(linspace(x_min, x_max, DENSITY), linspace(y_min, y_max, DENSITY), x, y)
    c = x + I*y
    z = c 
    fractal = 255

    do l = 1, ITER
        print "('Iteration ', i0)", n
        do n = 1, DENSITY
            do m = 1, DENSITY
                if (fractal(n, m) == 255) then
                    if (abs2(z(n, m)) > bound) then
                        fractal(n, m) = 254 * (n - 1) / ITER
                    end if
                else if (abs2(z(n, m)) <= bound) then
                    z(n, m) = z(n, m)**2 + c(n, m)
                end if
            end do
        end do
    end do

    print *, 'Saving... '
    call savetxt("fractal_f95.dat", log(real(fractal, dp)))

end program Mandelbrot