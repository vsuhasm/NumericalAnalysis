% Venkata Suhas Maringanti
% LU Decomposition of a matrix.
% Inputs : a - the matrix
% Output : L - the lower triangular matrix
% U - the upper triangular matrix
% a = L*U
% Function called - [L, U] = LU_Maringanti(a)

function [L, U] = LU_Maringanti(a)
[n, n] = size(a);
L = zeros(n, n);
U = zeros(n, n);
for i = 1 : n
    L(i, i) = 1;
end

for j = 1 : n-1
    if abs(a(j,j))<eps; error('zero pivot encountered'); end
    for i = j+1 : n
        mult = a(i,j)/a(j,j);
        for k = j:n
            a(i,k) = a(i,k) - mult*a(j,k);
            L(i,j) = mult;
        end
    end
end
U = a;
end