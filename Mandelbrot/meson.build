project('mandelbrot', 'fortran', meson_version: '>=0.49')
add_project_arguments('-Ofast', '-g3', language: 'fortran')

add_project_arguments('-march=native', language: 'fortran')
add_project_arguments('-fimplicit-none', language: 'fortran')
sources = files(
  'types.f90',
  'constants.f90',
  'utils.f90',
  'mesh.f90',
  'mandelbrot.f95'
)

executable('mandelbrot', sources)