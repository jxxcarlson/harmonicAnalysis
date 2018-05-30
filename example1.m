# Graph and compute Fourier coefficients
# of function r(theta) given in
# polar coordinates

theta = 0:0.01:(3*pi);
r = (1 - sin(5*theta).*cos(2*theta));

polar(theta, r)

printf('\n')
for n = 0:10
   fc = fourier(n,r,theta);
   printf('  %d:  %f + %fi\n\n', n, real(fc), imag(fc))
end

c = arrayfun(@(k) fourier(k,r,theta), 0:10);
