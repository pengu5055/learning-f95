#! /usr/local/bin/fish

# Execute and time both the Fortran and Python Mandelbrot programs

echo "Fortran:"
time ./Mandelbrot/build/mandelbrot > /dev/null
echo "Python:"
time python ./Mandelbrot/mandelbrot.py > /dev/null