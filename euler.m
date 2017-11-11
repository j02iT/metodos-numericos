[Y,T]=euler(F,A,B,Y,DY,N)

H=(B-A)/N;
T=A:H:B;
Y(1)=Y;
for I=1:N
    Y(I+1)=Y(I)+H*DY;
    DY=DY+H*feval(F,T(I),Y(I),DY);
end
disp('La solucion por el metodo de Euler es: ' T' ' - ' Y')
    