function z = deposito(t,y)
r0 = 0.003;
g = 9.8;
z = -0.6*pi*r0^2*sqrt(2*g)*(sqrt(y)/((20*pi/3)*y^2));