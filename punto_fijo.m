function [sol, x, incr, k] = punto_fijo(g, x1, tol, maxiter)
%Ejemplo
%   [sol, x] = punto_fijo('cos', 0, 0.0001, 100)
k = 1;
x = x1;
incr = tol + 1;
while incr>tol & k <= maxiter
    x(k+1) = feval(g, x(k));
    incr = abs(x(k+1)-x(k));
    k=k+1;
end
if incr>tol
    sol = [    ];
    disp('Insuficientes iteraciones')
else
    sol = x(end);
end
