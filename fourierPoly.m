# Compute value of Fourier polynomial with coefficients c
# and argument x

# This needs fixing because we are using only exp(ikx) with k >= 0

# Example: fourierPoly([1 0.5 0.25 0.125], 1) = 1 + 0.5*exp(x) + 0.25*exp(2x) + 0.125*exp(3x)

function y = fourierPoly(cs,x)
  [rows, cols] = size(cs);  # cols = size of coeffient array
  ks = 0:(cols -1);         # vector [0 1 2 .. k]
  xs = i*x*ks               # vector [0 x 2x .. kx]
  phi = exp(xs)             # vector of phases
  y = sum(cs.*phi)          # multiply phases by Fourier coefficients and add
end
