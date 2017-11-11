function z =lagrange(x,y,a)
% z ee el valor en a del polinomio de lagrange determinado por (x,y).
m=length(x);
z= zeros(size(a));
for i=1:m
    Li=1;
    for j=1:m
        if i ~=j
            Li=Li.*(a-x(j))/(x(i)-x(j));
        end
    end
    z=z+y(i)*Li;
end
