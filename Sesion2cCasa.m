suma1=0;
x=[1:100];
y=1./x;
suma1=sum(y)

suma=0;
for k=1:100
suma=suma+(1/k);
end
disp(suma)

suma=0;
k=1;
while k<=100
suma=suma+(1/k);
k=k+1;
end
disp(suma)

suma=0;
k=1;
do
suma=suma+1/k;
k=k+1;
until k>100
disp(suma)