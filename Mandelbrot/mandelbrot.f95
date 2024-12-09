program Mandelbrot
    use types, only: dp
    use constants, only: I
    use utils, only: savetxt
    use mesh, only: linspace, meshgrid
    implicit none


    real :: time_start, time_end
    integer, parameter :: ITER = 1000
    integer, parameter :: DENSITY = 1000
    real(dp) :: x_min, x_max, y_min, y_max
    real(dp), dimension(DENSITY, DENSITY) :: x, y
    complex(dp), dimension(DENSITY, DENSITY) :: c, z
    integer, dimension(DENSITY, DENSITY) :: fractal
    integer :: n
    call cpu_time(time_start)
    x_min = -2.68_dp
    x_max = 1.32_dp
    y_min = -1.5_dp
    y_max = 1.5_dp

    call meshgrid(linspace(x_min, x_max, DENSITY), linspace(y_min, y_max, DENSITY), x, y)
    c = x + I*y
    z = c 
    fractal = 255

    do n = 1, ITER
        print "('Iteration ', i0)", n
        where (abs(z) <= 10) z = z**2 + c
        where (fractal == 255 .and. abs(z) > 10) fractal = 254 * (n - 1) / ITER
    end do

    call cpu_time(time_end)
    print *, 'Saving... '
    print *, 'Time: ', time_end - time_start
    call savetxt("fractal_f95.dat", log(real(fractal, dp)))

end program Mandelbrot