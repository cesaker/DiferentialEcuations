1;

function y=f(x)
y=1./(x.^2+1);
endfunction

x=linspace(-5,5,100);
y=f(x);

plot(x,y)