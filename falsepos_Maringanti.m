% Venkata Suhas Maringanti
% Solves f (x) = 0 using False Position Method
% Inputs : f - the function
% x0 - starting guess
% x1 - second starting guess
% n - number of iterations
% Output : x - the approx. solution
% f = @(x) x^3 - 2*x -2
% Function called - falsepos_Maringanti(f, 1, 2, 19)


function x = falsepos_Maringanti(f ,x_0 ,x_1, n)
format long;
format compact;

a = x_0;
b = x_1;

for i = 3:n+2
        c = (b*f(a) - a*f(b))/(f(a)-f(b));
        if (f(c) == 0)
            return
        end
        if (f(c)*f(a)<0)
            b = c;
        else
            a = c;
        end
end




display(['Number of steps taken ' num2str(n)]);

display(['Initial guess ' num2str(x_0) ' and ' num2str(x_1)]);

x = c;

end