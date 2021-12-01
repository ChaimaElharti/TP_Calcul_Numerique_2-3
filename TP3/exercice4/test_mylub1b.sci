function []=test_mylu1b(A)


[L,U] = mylu1b(A)

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

err_comm = norm((A-L*U)/A)
disp((err_comm))
endfunction


