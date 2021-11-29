function [L,U] = mylu1b(A)
n = size(A,"r")
for k=1:n-1
    for i=k+1:n
        A(i,k) = A(i,k)/A(k,k);
        A(i,:) = A(i,:) - A(i,k) * A(k,:);
    end
end

L = tril(A)

for i=1:n
    L(i,i) = 1 
end 

U = triu(A);

endfunction
