function[] = resolution(A)
for n = 100
    A = rand(n,n)
    xex = rand(n,1)
    b = A* xex
    x = A \ b
    erreur_avant = norm((xex-x) / xex)
    disp(erreur_avant)
    erreur_arriere = norm((b -(A * x)) / b)
    disp(erreur_arriere)
end

endfunction
