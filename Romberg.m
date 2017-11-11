function R = Romberg(f,a,b,N,tol,maxiter)
% tol:tolerancia en el criterio de convergencia
% maxiter: numero maximo de filas de la matriz R
% R: tabla de Romberg
h = (b-a)/N;
incr = tol+1;
R(1,1) = trapecios (f,a,b,N);
k=2;
while incr > tol & k < maxiter
    h = h/2;
    x = a+h:2*h:b-h;
    y = feval(f,x);
    R(k,1) = R(k-1,1)/2 + h*sum(y);
    for j = 2:k
        R(k,j) = (4^(j-1)*R(k,j-1) - R(k-1,j-1))./(4^(j-1)-1);
    end
    incr = abs(R(k,k)-R(k,k-1));
    k = k+1;
end
if incr > tol
    disp('Se necesitan mas filas')
end
