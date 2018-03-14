1;

function y=f2(x)
if x>0
y=x.^2-5;
elseif
y=x-5;
end
end

x=linspace(-5,5,100);
fx=f2(x)

plot(x,fx)