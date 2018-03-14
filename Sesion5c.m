1;
        function y=f(x)
        y=7.*x-1.4;
        end
        a=0;
        b=0.8;
        do c=(a+b)./2;
        until i>20
          if f(c)==0
printf("hemos encontrado la solucíón exacta"); 
elseif f(a).*f(c)<0
b=c;
             else a=c;
          end;
printf("la iteración %i es igual a %.8f \n",i,c); 
