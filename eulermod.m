function[t,y]= eulermod(f,t,y1)
%aplica Euler al problema del valor incial
%y'=f(t,y) con y(a)=y1
%t guarda los nodos de integracion en [a,b]
%y guarda la solucion aproximada
n= length(t);
h=diff(t);
y=zeros(n,1);
y(1)=y1;
for k = 1:n-1
    y12 = y(k) + h(k)/2*feval(f,t(k),y(k));   %Estimacion de yk+h/2
    y(k+1) = y(k) + h(k)*feval(f,t(k) + h(k)/2,y12)   %Est. de yk+1
end