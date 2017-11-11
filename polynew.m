function [c,T] = polynew(x,y,n)
%c, coeficientes del coeficiente interpolador
%T, tablade diferencias dividas
%x e y, guardan el soporte de interpolacion
x = x(:); y = y(:);
if nargin == 2
    n=length(x)-1;
end
T = y(1:n+1);
for j = 2:n+1
    for k=2:j
        T(j,k) = (T(j,k-1)-T(j-1,k-1))/(x(j)-x(j-k+1));
    end
end
c = flipud(diag(T));
