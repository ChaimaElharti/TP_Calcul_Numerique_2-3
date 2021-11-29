U = triu(rand(10,10))
xex = rand(10,1)

b = U * xex

function[] = test_usolve(U,b)

if triu(U)==U then
    disp("Matrice conforme")
end


[x] = usolve(U,b) 
erreur_avant = norm((xex-x) / xex)
disp(erreur_avant)
erreur_arriere = norm((b -(U * x)) / b)
disp(erreur_arriere)

if erreur_avant<10e-3 then
    disp("La fonction renvoie des valeurs correctes : erreur avant ok")
end
if erreur_arriere<10e-3 then
    disp("La fonction renvoie des valeurs correctes : erreur arriere ok")
end
endfunction


