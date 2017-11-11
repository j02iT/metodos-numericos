function[sol, x, incr, iter] = RegulaFalsi(f, a, b, tol, maxiter)
fa=feval(f,a);
fb=feval(f,b);
if fa*fb > 0
    disp('La funcion debe tener cambio de signo en el intervalo')
    return
end
iter = 0;
x = a;
incr = b-a;
fprintf ('______________________________________________________________________ \n')
fprintf ('  n        a           c           b           fc                      \n')
fprintf ('_______________________________________________________________________\n')
while incr > tol & iter < maxiter
    c = (a*fb - b*fa)/(fb - fa);
    x=[x c];
    fc = feval (f,c);
    fprintf ('%3 d %14 .8f %14 .8f %14 .8f %14 .8f \n', iter, a, c, b, fc)
    if fc==0
        a = c;
        b = c;
    elseif fa*fc < 0
        b = c; 
        fb = fc;
    else
        a = c; 
        fa = fc;
    end
    incr = abs(x(end)-x(end-1));
    iter = iter + 1;
end
fprintf ('_______________________________________________________________________\n')
sol = c;
 if incr > tol 
     disp ('Insuficientes iteraciones')
 end