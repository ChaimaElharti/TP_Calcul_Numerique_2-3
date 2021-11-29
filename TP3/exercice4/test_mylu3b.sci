function[L,U] = test_mylu3b(A)

A = rand(10,10)
[L,U] = mylu3b(A)

if L==tril(L) then 
    disp("L est bien triangulaire inférieure")
end 

if U==triu(U) then 
    disp("U est bien triangulaire supérieure")
end 

n = size(L,"r")
for i=1:n
    if L(i,i)==1 then
        disp("Il y a bien des 1 sur la diagonale de L")
    end 
end 
endfunction
