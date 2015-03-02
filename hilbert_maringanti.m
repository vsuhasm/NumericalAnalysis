% Venkata Suhas Maringanti
% Solves a system of equation Hx = b where H is a Hilbert Matrix and b is a
% matrix with all ones.
% Inputs : n - the dimension of the hilbert matrix.
% Output : x - the solution vector.


function x = hilbert_maringanti(n)

for i = 1:n
    for j=1:n
        a(i,j) = 1/(i+j-1);
    end
    b(i,1)= 1;
end

[n, n] = size(a);

for j = 1 : n-1
    if abs(a(j,j))<eps; error('Zero pivot encountered!!');
    end
    for i = j+1 : n
        mult = a(i,j)/a(j,j);
        for k = j:n
            a(i,k) = a(i,k) - mult*a(j,k);
        end
        b(i) = b(i) - mult*b(j);
    end
end


for i = n : -1 : 1
    for j = i+1 : n
        b(i) = b(i) - a(i,j)*x(j);
    end
    x(i) = b(i)/a(i,i);
end

end

