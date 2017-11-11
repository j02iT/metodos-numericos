function x = grad(a,b)
%Se resuelve el sistema ax=b mediante gradiente conjugado
%a debe ser simetrica y definida positiva.
%b es el termino independiente
if(a ~=a')
    error('la matriz debe ser simetrica')
end
x0=ones(length(b),1);
tol=1.e-2;
M=3*length(b);
res=b-a*x0;
v=res;
c=dot(res,res);
if(c < tol)
    x=x0;
    return
end
for k=1:M
    z=a*v;
    deno=sum(v.*z);
    if (deno<=0)
        error('La matriz debe ser definida positiva')
    end
    t=c/deno;
    x0=x0+t*v;
    res=res-t*z;
    d=sum(res.*res);
    if (d < tol)
        x=x0;
        return
    end
    v=res+(d/c)*v;
    c=sum(res.*v);
end
disp('Atencion: insuficiente numero de iteraciones')
x=x0;
