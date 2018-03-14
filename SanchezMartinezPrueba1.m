%%%%Método de Euler%%%%

clear all
t=-1:-0.01:-30; %Otorgamos un intervalo de valores al tiempo

x(1)=-2; %Condición inicial de x
tic %Comenzamos el contador de tiempo
h=-0.01; %Paso que vamos a tomar
n=length(t);
for k=1:(n-1) %Valores para k
 x(k+1)=x(k)+h*[((t(k)^2)*exp(-x(k)/t(k))+x(k)^2)/(t(k)*x(k))]; 
 %Fórmula del teorema de Euler con la función inicial ya introducida
end

u=-1:0.01:-0.01; %Aquí realizamos lo mismo que al principio 
                 %pero para el intervalo de la derecha de -1

y(1)=-2;
tic
p=0.01;
m=length(u);
for l=1:(m-1)
 y(l+1)=y(l)+p*[((u(l)^2)*exp(-y(l)/u(l))+y(l)^2)/(u(l)*y(l))];
 end
 
 subplot(2,1,1)
 plot(t,x,u,y); %Representamos la función obtenida


c=0; %Iniciamos el valor final de la suma a 0
for i=1:(n-1);
c(i)=-[(t(i)-t(i+1))*(x(i)+x(i+1))./2]; %Regla del trapecio 
%para calcular el área que se encuentra debajo de la curva
%que hay debajo de la parte izquierda de la función
c=sum(c);
end

cc=0; %Lo mismo pero para el intervalo de la derecha de -1
for ii=1:(m-1);
cc(ii)=[(u(ii)-u(ii+1))*(y(ii)+y(ii+1))./2];
cc=sum(cc);
end

AreaEuler=cc+c %Sumamos las dos áreas para obtener la total
 T1=toc %Finalizamos el contador de tiempo

 %%%%Método de bisección%%%%
 
1;
clear all
   function y=f(t,x) %Declaramos la función
   y=(((x/t)-1)*exp(x/t))-log(-t)-(exp(2)); 
   end 
   
c=-0.01; %Paso a utilizar
d=-30; %Límite inferior
h=0.01; %Límite superior
t=d:h:c; %Definimos el vector de tiempos
n=length(t);
tic %Iniciamos contador de tiempo
for i=1:n
	a=-70; %Otorgamos el máximo valor que podemos llegar hacia
         %la izquierda
  b=-0.01; %El mínimo valor
	for q=1:20
	z=(a+b)./2;
		if f(t(i),z)=0 %Aquí lo que forzamos es que si es igual a 
    %cero es que hemos encontrado la raíz y salta al final
		break
		elseif f(t(i),a)*f(t(i),z)<0
		b=z;
		else a=z;
		end
	end
x(i)=z;
end

subplot(2,1,2)
plot(t,x, 'r'); %Representamos la 'curva' obtenida


c=0;
for i=1:(n-1);
c(i)=[(t(i)-t(i+1))*(x(i)+x(i+1))./2]; %Regla del trapecio para Bisección
c=sum(c);
end
AreaBiseccion=c
T2=toc




