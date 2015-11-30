c = 1.0;

a = 2.0;

pass = 

x0 = 0;
y0 = 0;



m = a-c;

nu = 0:0.01:2*pi;

zeta = c * ((1+(m/c)*(1-cos(nu))) .* exp(1i*nu));

z = zeta + c^2./zeta;


z = 2.*cos(nu)+1i.*2.*m/c.*(1-cos(nu)).*sin(nu)
figure
plot(real(z),imag(z))