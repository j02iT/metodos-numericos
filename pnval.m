function z =pnval(x,c,a)
%evalua polinomio c en a
%c es el polinomio interpolador de newton
% calculado en el soporte x
 n=length(c)-1;
 z=c(1)*ones(size(a));
 for k=1:n
     z=z.*(a-x(n-k+1))+c(k+1);
 end
 