tic()
for n = 10
A = rand(n,n)
B = rand(n,n)

function [C] = matmat1b(A, B) 
    p1 = size(A, "c")
    p2 = size(B, "r")
    m = size(A, "r")
    n = size(B, "c")
    C = zeros(m,n)
    if (p1 == p2) then 
        for i = 1 : m
            C(i,:) = A(i,:) * B + C(i,:);
        end
    end
endfunction 
end

t1b=toc()


disp(t1b)
