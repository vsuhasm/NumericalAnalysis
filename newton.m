% Venkata Suhas Maringanti
% Solves f (x ) = 0 by doing n steps of Newton ’s method starting at x0 .
% Inputs : f -- the function , input as an inline
% f1 -- it ’s derivative , input as an inline
% x0 -- starting guess , a number
% n -- the number of iterations
% Output : x -- the approximate root
% For 1.4 2a f1 = @(x) 5*x^4 + 1, x0 = 0, n = 7
% For 1.4 2b f1 = @(x) cos(x) - 6, x0 = 0, n = 4
function x = newton (f ,f1 ,x0 , n)
    format long % prints more digits
    format compact % makes the output more compact
    x = x0 ; % set x equal to the initial guess x0
    for i = 1: n % Do n times
        x = x - f(x )/ f1 ( x); % Newton ’s formula , prints x too
    end