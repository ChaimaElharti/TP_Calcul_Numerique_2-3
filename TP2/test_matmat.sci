A0 = rand(3,3)
B0 = rand(3,3)
A1 = rand(10,10)
A2 = rand(100,100)
B1 = rand(10,10)
B2 = rand(100,100)

//On considère que matmat3b est le produit matriciel de référence. 
err1 = matmat3b(A1,B1) - matmat1b(A1,B1)
err2 = matmat3b(A1,B1) - matmat2b(A1,B1)

disp(err1)
disp(err2)
