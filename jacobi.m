function [x, incr, iter] = jacobi(A,b,x0,tol, maxiter)
M=diag(diag(A));
N=M-A;
iter=1;
incr=1+tol;
while incr>tol & iter < maxiter
    x=M\(N*x0+b);
    incr=norm(x-x0,inf);
    x0=x;
    iter=iter+1;
end
if incr>tol
    disp('No converge con las iteraciones dadas')
end
