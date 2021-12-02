A = rand(800,800)
tic()
function [L, U, P] = mylu(A)

    n = size(A,"r")
    for i = 1:n
        Piv(i) = i;
    end
    for k = 1:n
        [piv,ind] =max(abs(A(k:n,k)))
        ind = k-1 + ind
        q = Piv(ind)
        Piv(ind) = Piv(k)
        Piv(k) = q
        v = A(k,:)
        A(k,:) = A(ind,:)
        A(ind,:) = v
        for i = k+1:n
            A(i,k) = A(i,k) / A(k,k);
            for j = k+1:n 
                A(i,j) = A(i,j)-A(i,k) * A(k,j);
            end
        end
    end

for i = 1:n 
    for j = 1:n 
        if j == Piv(i) then P(i,j) = 1
        else P(i,j) = 0
        end
    end
end

U = triu(A);
L = tril(A);
for i = 1:n
    L(i,i) = 1
end
endfunction 
t = toc()
disp(t)
