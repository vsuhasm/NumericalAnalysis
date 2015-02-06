%Program Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%number of iteration steps k
%Output: Approximate solution xc
function xc=fpi(g, x0, k)
be = 0.001; %backward error limit
x(1)=x0;
for i=1:k
x(i+1)=g(x(i));
berr = abs(g(x(i+1)));
if (berr < be)
    break
end
end
xc=x(k+1);