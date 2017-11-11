function [t,y] = rungekutta(f,t,y1)
%aplica runge-kutta al problema de valor inicial
%y' =f (t,y) con y(a) =y1
%t guarda los nodos de integracion en [a,b]
%y guarda la solucion aproximada
n= length(t);
h=diff(t);
y=zeros(n,1);
y(1)=y1;
for k = 1:n-1
    k1=feval(f,t(k),y(k));
    k2=feval(f,t(k)+h(k)/2,y(k)+h(k)/2*k1);
    k3=feval(f,t(k)+h(k)/2,y(k)+h(k)/2*k2);
    k4=feval(f,t(k+1),y(k)+h(k)*k3);
    y(k+1)=y(k)+h(k)/6*(k1+2*k2+2*k3+k4);
end

