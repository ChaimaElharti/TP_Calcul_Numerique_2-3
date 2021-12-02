A = rand(1000,1000)
tic()

function [L,U] = mylu1b(A)

n = size(A,"r")

for k=1:n-1
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k) * A(k,k+1:n);
end

L = tril(A)

for i=1:n
    L(i,i) = 1 
end 

U = triu(A);

endfunction
t1 = toc()
disp(t1)
