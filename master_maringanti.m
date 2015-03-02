% Venkata Suhas Maringanti
% Master file for the homework.
% Make sure you enter the second argument in quotes 
% for example master_maringanti(1,'a')

function []= master_maringanti(x,b)

if (x == 1)
    if (b == 'a')
        hilbert_maringanti(2)
        hilbert_maringanti(5)
        hilbert_maringanti(10)
    end 
end


if (x == 2)
    if (b == 'a')
        error_hw_maringanti(6)
        error_hw_maringanti(10)
    end 
end

if (x == 3)
    if (b == 'a')
        jacobi_maringanti(100, 20)
        jacobi_maringanti(1000, 20)
    end
end

end