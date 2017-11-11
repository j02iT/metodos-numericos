function [sol, x, incr, iter] = biseccion(f,a,b,tol, maxiter) %Aplica biseccion a la funcion f en el intervalo [a,b]
fa = feval(f,a);
fb = feval(f,b);
if fa*fb > 0
    disp('La funcion debe tener distinto signo en los extremos del intervalo')
    return
end
iter = 0;
x = [];
incr = b-a;
fprintf('_____________________________________________________\n')
fprintf('  n        a           c           b           fc    \n')
fprintf('_____________________________________________________\n')
while incr > tol & iter < maxiter
    c = (a+b)/2;
    x=[x c];
    fc = feval(f,c);
    fprintf('%3d %14.8f %14.8f %14.8f %14.8f \n', iter, a, c, b, fc)
    if fc==0
        a = c; b = c;
    elseif fa*fc < 0
        b = c; fb = fc;
    else
        a = c; fa = fc;
    end
    incr = b-a;
    iter = iter + 1;
end
fprintf('_____________________________________________________\n')
sol = c;
 if incr > tol 
     disp('Insuficientes iteraciones')
 end
 
