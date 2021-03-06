A = rand(750,750)
tic()

function [L, U] = mylu3b(A)
n = size(A,"r")
for k=1:n-1
    for i=k+1:n
        A(i,k) = A(i,k)/A(k,k);
    end
    for i=k+1:n
        for j=k+1:n
            A(i,j) = A(i,j) - A(i,k) * A(k,j);
        end
    end
end


L = tril(A)

/* on impose que la diagonale de la matrice triangulaire inférieure 
ait des coefficients valant 1*/
for i=1:n
    L(i,i) = 1 
end

U = triu(A);

endfunction
t3b = toc()
disp(t3b)
