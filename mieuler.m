function [t,y] = mieuler(f,t,y1)
% Aplica Euler al problema de valor inicial
%y' = f(t,y) con y(a) = y1
%t guarda la solucion aproximada
n = length(t);
h = diff(t);
y = zeros(n,1);
y(1) = y1;
for k = 1:n-1
    y(k+1) = y(k) + h(k)*feval(f,t(k),y(k));
end
