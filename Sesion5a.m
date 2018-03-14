1;
function y=f(x) 
y=x.^2-3; 
end
a=0; 
b=2;
for i=1:20
      c=(a+b)./2;
      if f(a).*f(c)<0
b=c;
        else a=c;
      end;
printf("la iteraci ́on %i es igual a %.8f \n",i,c); 
end