function[] = test_lsolve(L,b) 
L = tril(rand(10,10))
xex = rand(10,1)
b = L * xex

if tril(L)==L then
    disp("Matrice conforme")
end

[x] = lsolve(L,b) 
erreur_avant = norm((xex-x) / xex)
disp(erreur_avant)
erreur_arriere = norm((b -(L * x)) / b)
disp(erreur_arriere)

if erreur_avant<10e-3 then
    disp("La fonction renvoie des valeurs correctes : erreur avant ok")
end
if erreur_arriere<10e-3 then
    disp("La fonction renvoie des valeurs correctes : erreur arriere ok")
end

endfunction
