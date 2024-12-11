project('mandelbrot', 'fortran', meson_version: '>=0.49')
add_project_arguments('-O3 -march=native', language: 'fortran')
sources = files(
  'types.f90',
  'constants.f90',
  'utils.f90',
  'mesh.f90',
  'mandelbrot.f95'
)

executable('mandelbrot', sources)