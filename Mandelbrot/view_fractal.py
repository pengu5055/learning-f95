import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
import cmasher as cmr

mpl.style.use('./Mandelbrot/ma-style.mplstyle')

fractal1 = np.loadtxt("./Mandelbrot/fractal.dat")
fractal2 = np.loadtxt("./Mandelbrot/fractal_f95.dat")
x_min, x_max = -2.68, 1.32
y_min, y_max = -1.5, 1.5

cm1 = cmr.get_sub_cmap('cmr.flamingo', 0.0, 0.9)
cm2 = cmr.get_sub_cmap('cmr.arctic', 0.0, 0.9)

fig, ax = plt.subplots(1, 2, figsize=(12, 5))


ax[0].imshow(fractal1, cmap=cm1,
            extent=(x_min, x_max, y_min, y_max))
ax[0].set_title('Mandelbrot Set - Python')
ax[0].set_xlabel('Re(z)')
ax[0].set_ylabel('Im(z)')

ax[1].imshow(fractal2, cmap=cm2,
            extent=(x_min, x_max, y_min, y_max))
ax[1].set_title('Mandelbrot Set - Fortran')
ax[1].set_xlabel('Re(z)')
ax[1].set_ylabel('Im(z)')

plt.tight_layout()
plt.savefig("./Mandelbrot/mandelbrot.png", dpi=400)
plt.show()
