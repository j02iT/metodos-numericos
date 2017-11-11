function[t,y]=heun(f,t,y1)
%aplica Heun al problema del valor incial
%y'=f(t,y) con y(a)=y1
%t guarda los nodos de integracion en [a,b]
%y guarda la solucion aproximada
n= length(t);
h=diff(t);
y=zeros(n,1);
y(1)=y1;
for k =1:n-1
    k1=feval(f,t(k),y(k));
    yp=y(k) + h(k)*k1;              %prediccion
    k2=feval(f,t(k)+h(k),yp);
    y(k+1) =y(k) + h(k)/2*(k1+k2);  %correccion
end
