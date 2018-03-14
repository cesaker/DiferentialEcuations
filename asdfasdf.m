1;
function y=f(x)
y=7.*x-1.4;
end
a=0;
b=0.8;
for i=1:20
c=(a+b)./2;
if f(c)>0
printf('hemos encontrado la solucion exacta');
elseif f(a).*f(c)<0
b=c;
else
a=c;
end
printf('la iteracion %i es igual a %.8f \n',i,c);
end