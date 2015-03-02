% Venkata Suhas Maringanti

function [] = error_hw_maringanti(n)
A = zeros(n,n);
x = zeros(n,1);

b = zeros(n,1);

for i = 1:n
    for j = 1:n
        A(i,j) = 5/(i+2*j-1);
    end
    x(i,1) = 1;
end

b = A*x; %Calculating b=Ax

xc = zeros(n,1);
xc = A\b; %Calculating xc where A * xc = b

bc = zeros(n,1);
bc = A*xc;

fwe  = abs(norm(x-xc,inf)) % forward error
rfwe = fwe/norm(x,inf)     % relative forward error
bwe = abs(norm(b-bc,inf))  % backward error
rbwe = bwe/norm(b,inf)     % relative backward error

error_mag_factor = rfwe / rbwe

A_conditioning = cond(A,inf)




end