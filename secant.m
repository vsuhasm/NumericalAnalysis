% Venkata Suhas Maringanti
% Solves f (x ) = 0 by doing n steps of the secant method
% starting with x0 and x1 .
% Inputs : f -- the function , input as an inline function
% x0 -- starting guess , a number
% x1 -- second starting geuss
% n -- the number of iterations
% Output : x -- the approximate solution
% For the given problem, use x0 = 0, x1 = 1, n = 2

function x = secant (f ,x0 ,x1 , n)
format long % prints more digits
format compact % makes the output more compact
y0 = f( x0 );
y1 = f( x1 );
for i = 1: n % Do n times
x = x1 - (x1 - x0 )* y1 /( y1 - y0 ); % secant formula .
y=f (x ); % y value at the new approximate solution .
% Move numbers to get ready for the next step
x0 = x1 ;
y0 = y1 ;
x1 = x;
y1 = y;
end