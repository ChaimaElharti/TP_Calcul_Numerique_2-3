tic()
for n = 10
A = rand(n,n)
B = rand(n,n)
function [C] = matmat2b(A, B) 
    p1 = size(A, "c")
    p2 = size(B, "r")
    m = size(A, "r")
    n = size(B, "c")
    C = zeros(m,n)
    if (p1 == p2) then 
        for i = 1 : m
            for j = 1 : n
                C(i,j) = A(i,:) * B(:,j) + C(i,j);
            end
        end
    end
endfunction 
end

t2b=toc()

disp(t2b)




