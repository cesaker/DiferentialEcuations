1;
function y=f1(x)
if x>=0
y=x.^2-5;
end
endfunction

x=linspace(0,5,100);
y=f1(x);

plot(x,y)