for i=1:51;
ti=1/(3^i);
end
disp(ti)

for i=1:51;
zi=(1/3)^i;
end
disp(zi)

f(1)=1;
f(2)=1/3;
for i=2:52
f(i+1)=10*(f(i)/3)-(f(i-1));
end
disp(f(i+1))