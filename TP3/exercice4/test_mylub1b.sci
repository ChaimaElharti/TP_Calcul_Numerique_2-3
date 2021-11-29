function []=test_mylu1b(A)

A = rand(10,10)

[L3b,U3b] = mylu3b(A)
[L1b,U1b] = mylu1b(A)


disp(L3b==L1b)


if (U3b==U1b) then
    disp("Résultats conformes")
end

endfunction


