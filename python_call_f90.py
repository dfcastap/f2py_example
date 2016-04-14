# Import the Fortran subroutine:
import integrate as it
# And you're set, call it and pass the required
# arguments!

f_name = "outputflux875" # Name of file
n_elem = 1048992 # Number of lines in file
area = it.integrate(f_name,n_elem) # Fortran call


