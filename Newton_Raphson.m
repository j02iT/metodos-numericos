function [sol, x, incr, k] = Newton_Raphson (f, x1, tol, maxiter)
%Metodo de Newton-Raphson para f(x)=0
%f funcion que devuelve y=f(x) y dy=f'(x) mediante [y,dy]=f(x)
%Ejemplo :
%    [sol, x] = Newton_Raphson('cos', 0.5, 1e-4, 100)
k = 1;
x = x1;
incr = tol + 1;
while incr > tol & k <= maxiter
    [y, dy] = feval(f,x(k));
    delta = -y/dy;
    x(k+1) = x(k) + delta;
    incr = abs(delta);
    k = k+1;
end
if incr > tol
    sol = [ ];
    disp('Insuficientes iteraciones')
else
    sol = x(end);
end