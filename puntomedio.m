function I = puntomedio(f,a,b,N)
%Sintaxis: I = puntomedio('f',a,b,N)
%f: nombre del archivo .m donde se define la funcion a integrar
%a,b: intervalo de integracion
%N: numero de subintervalos
h = (b-a)/N;
x = a+h/2:h:b-h/2;
y = feval(f,x);
I = h*sum(y);
