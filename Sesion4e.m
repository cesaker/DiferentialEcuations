1;

function y=f4(x)
for i=1:length(x)
if x(i)>0
y(i)=x(i).^2-5;
else 
y(i)=x(i)-5;
end
end
end

t=linspace(-5,5,100)
ft=f4(t);

plot(t,ft)