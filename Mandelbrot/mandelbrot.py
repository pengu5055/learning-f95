import numpy as np
from time import time

ITER = 1000
DENSITY = 1000
x_min, x_max = -2.68, 1.32
y_min, y_max = -1.5, 1.5

# Cast all to float64
x_min, x_max = np.float64(x_min), np.float64(x_max)
y_min, y_max = np.float64(y_min), np.float64(y_max)

print(type(x_min))

start_time = time()

X, Y = np.meshgrid(np.linspace(x_min, x_max, DENSITY), np.linspace(y_min, y_max, DENSITY))

c = np.complex64(X + 1j * Y)
z = c.copy()
fractal = np.zeros(z.shape, dtype=np.uint8) + 255

for i in range(ITER):
    print(f"Iteration {i+1}/{ITER}", end="\r")
    mask = np.abs(z) <= 10
    z[mask] *= z[mask]
    z[mask] += c[mask]
    fractal[(fractal == 255) & (~mask)] = 254. * i / ITER

end_time = time() - start_time

print(f" ")
print(f"Time: {end_time:.2f} s")
np.savetxt("./Mandelbrot/fractal.dat", np.log(fractal))
