function I=trapecios(f,a,b,N)
h=(b-a)/N;
x=a:h:b;  %Nodos de cuadratura
y=feval(f,x);
p=[1 2*ones(1,N-1) 1];  %Pesos de la cuadratura
I=(h/2)*sum(p.*y);  %Integral aproximada
