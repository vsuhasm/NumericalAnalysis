% Venkata Suhas Maringanti
% Jacobi Method
% Inputs: full or sparse matrix a, r.h.s. b,
% number of Jacobi iterations, k
% Output: solution x

% This is the code from the book.


function x = jacobi_maringanti(n, k)

e = ones(n,1); n2=n/2;
a = spdiags([-e 3*e -e],-1:1,n,n); 
c=spdiags([e/2],0,n,n);c=fliplr(c);a=a+c;
a(n2+1,n2) = -1; a(n2,n2+1) = -1; % Fix up 2 entries
b=zeros(n,1); % Entries of r.h.s. b
b(1)=2.5;b(n)=2.5;b(2:n-1)=1.5;b(n2:n2+1)=1;

disp(['This is for dimension(n) ', int2str(n)])

n=length(b); % find n
d=diag(a); % extract diagonal of a
r=a-diag(d); % r is the remainder
x=zeros(n,1); % initialize vector x
for j=1:k % loop for Jacobi iteration
    x = (b-r*x)./d;
    
    
end % End of Jacobi iteration loop