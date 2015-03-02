% Venkata Suhas Maringanti
% Solves f(x) = 0 using modified Newton's method.
% Inputs : f - the function
% f1 - derivative of f
% x0 - starting guess
% n - number of iterations
% m - multiplicity of the root
% Output : x -the approx. solution
% In order to find the multiplicity, we use newton.m to find out the root.
% Then we differentiate the function and plug in the root and check if it  
% is zero. We keep repeating this process until we get a non-zero value. The
% number of times this process is repeated is the multiplicity.
% f = @(x) 2*exp(x-1) - x^2 -1
% f1 = @(x) 2*exp(x-1) -2*x
% run modNewton_Maringanti(f, f1, 0, 3, 3) where x_0 = 0, m = 3, n = 3



function x = modNewton_Maringanti(f ,f1 ,x_0 , m, n)
format long;
format compact;
r = 1;
x = x_0 ;

for i = 1: n
    if (f1(x)== 0)
        return
    end
    x = x - m*(f(x)/ f1 (x)) ;
    
end

fw = abs(r-x);
bw = abs(f(x));

sprintf('%0.16f', fw)
sprintf('%0.16f', bw)

display(['Number of steps taken ' num2str(n)])

display(['Initial guess x_0 ' num2str(x_0)])



end