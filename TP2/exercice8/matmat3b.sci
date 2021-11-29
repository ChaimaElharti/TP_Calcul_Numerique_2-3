tic()
for n = 10
A = rand(n,n)
B = rand(n,n)
function [C] = matmat3b(A, B) 
    p1 = size(A, "c")
    p2 = size(B, "r")
    m = size(A, "r")
    n = size(B, "c")
    C = zeros(m,n)
    if (p1 == p2) then //On vérifie que les matrices entrées par l’utilisateur sont bien conformes au produit que l’on veut faire
        for i = 1 : m
            for j = 1 : n
                for k = 1 : p1 
                    C(i,j) = A(i,k) * B(k,j) + C(i,j);
                end
            end
        end
    end
endfunction 
end 

t3b=toc()


disp(t3b)
