clear all
t=-30:0.02:2;

n=length(t);
for i=1:n
x=exp(t)-sin(t);
end
figure (1);
plot(t,x)


%%%% BISECCION %%%%
1; 
function y=f(t1)
y=exp(t1)-sin(t1);
end
tic
t1=-60:pi:0;
z=[];
for u=1:19
a=t1(u);
b=t1(u+1);
  for i=1:20
      c=(a+b)./2;
      if abs(f(c))<(10^(-8));
      break
      elseif f(a).*f(c)<0;
      b=c;
      else
      a=c;
      end
  end
z=[z,c];
end  
disp(z);
T1=toc

%%%% SECANTE %%%%

1;
function y=f(t)
y=exp(t)-sin(t);
end

v=[];
o=0:-pi:-60;

tic

for i=1:(length(o)-1)
  a=o(i);
  b=o(i+1);

  tolerancia=0.0000000000001;

  do 
    xa=b-(((f(b))*(b-a))./((f(b))-(f(a)) ));
  
  
    a=b;
    b=xa;
  until abs(f(b))<tolerancia

v=[v,xa(end)];

end
disp(v)
T2=toc



%%%% SPLINE GRADO 1%%%% 
t5=-60:0.1:2;

function y=s(t5)
  y=(-exp(t5)-sin(t5))/(exp(t5)-cos(t5));
end

SPLINE1=[];

for u=1:19
    Sn=s(v(u));
    SPLINE1=[SPLINE1 Sn];
end

figure (2);
plot(v, SPLINE1, 'g*-');


%%%% SPLINE CUADRATICO %%%%






%%%% SPLINE CÚBICO %%%%
x=f(v);
inter=v(end):0.01:v;
splinenotaknot=spline(v,SPLINE1,inter);

figure(4);
plot(v,x,'g*',inter,splinenotaknot,'g');