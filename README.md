# f2py_example
Basics of how to use Numpy's F2PY to call a Fortran subroutine from Python
Required: Python + Numpy and a Fortran compiler.

To compile the f90 code you must type

`f2py -c -m some_file some_file.f90`

In the Python script, change the file name variable and the number of elements in the file as needed.
