# Name - Win Yu Maung
# ID - 6612054

import numpy as np
import time

N = 10000

arr = np.zeros((N, N), dtype=int)

# Row-major access (C-style)
start = time.time()
sum_val = 0
for i in range(N):
    for j in range(N):
        sum_val += arr[i, j]
end = time.time()
print(f"Row-major (Python) time: {end - start:.4f} sec")

# Column-major access
start = time.time()
sum_val = 0
for j in range(N):
    for i in range(N):
        sum_val += arr[i, j]
end = time.time()
print(f"Column-major (Python) time: {end - start:.4f} sec")

# NumPy optimized (fastest)
start = time.time()
sum_val = np.sum(arr)
end = time.time()
print(f"NumPy optimized time: {end - start:.4f} sec")

arr_f = np.zeros((N, N), dtype=int, order='F')
start = time.time()
sum_val = 0
for j in range(N):
    for i in range(N):
        sum_val += arr_f[i, j]
end = time.time()
print(f"Column-major on F-order array: {end - start:.4f} sec")