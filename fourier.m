# Compute Fourier coefficeint c_n for function
# with x-values phi and y-values rho

function c = fourier(n,rho,phi)
  r = rho.*exp(n*i*phi);
  c = trapz(phi,r);
end
