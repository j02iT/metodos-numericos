function I=simpson(f,a,b,n)
%calcula la integral de f frente a a y b por simpson.
%AVISO: n debe de ser par
h=(b-a)/n;
x=a:h:b;
y=feval(f,x);
 p = ones(1,n+1);
 p(2:2:n)=4;
 p(3:2:n-1) =2;
 I = (h/3)*sum(p.*y);
