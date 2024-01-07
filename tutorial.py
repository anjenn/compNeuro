# python -m ensurepip
# python -m pip install --upgrade pip

from __future__ import division # to prievent zerofying integer calculation (eg. 3/5 equals 0 unless indicated as floating number like 3./5 or 3/5.)
import numpy as np # run 'pip install numpy'
import matplotlib.pyplot as plt
import pickle


x = np.array([1, -1, 2, -2, 3])

# plt.plot(x)
# plt.show()

# create dictionary containing all your data
data = {'stim': np.array([1, 2, 3]), 'response': np.array([6, 2, 0])}

# save data in pickle format
with open('my_data.pickle', 'wb') as f:
    pickle.dump(data, f)

# open data from file
with open('my_data.pickle', 'rb') as f:
    new_data_variable = pickle.load(f)

# now new_data_variable is equal to the dict:
# {'stim': np.array([1, 2, 3]), 'response': np.array([6, 2, 0])}

# A = np.array([[1, 2, 3], [2, 3, 4], [3, 4, 5], [4, 5, 6]])
# print(A)

# A = np.array([[1,2,3,4], [2,3,4,5], [3,4,5,6]])
# # B = A[row, col]
# # B = A[[0,2],2:] # 0th and 2nd row, selecting from 2th to the last column equivalent to B = A(1:2:3,3:4) in matlab
# # B = A[1:, [0, 2]] # from 1st row, 0th and 2nd cols
# print(B)

a = [1,2,3,4]
# b = np.ones((5, 5)) # works [[1. 1. 1. 1. 1.] [1. 1. 1. 1. 1.] [1. 1. 1. 1. 1.] [1. 1. 1. 1. 1.] [1. 1. 1. 1. 1.]]
# b = np.ones(5, ) # works [1. 1. 1. 1. 1.]
# b = a[4:] # works []
# b = a[:2] # works [1, 2]
# b = a[:5] # works [1, 2, 3, 4]
# b = a[:2, :2] # error
# b = np.ones(5, 5) # eror
# b = a[4] # error - list index out of range
# b = a[2] # works 3
print(b)