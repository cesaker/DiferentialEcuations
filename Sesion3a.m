for x=0:150;
xn=5/(2^x)
end 

t(1)=5;
for i=2:151
t(i)=t(i-1)/2
end