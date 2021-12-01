function[] = test_mylu(A)

A = rand(10,10)
[Lth, Uth, Pth] = lu(A)
[Lexp, Uexp, Pexp] = mylu(A)

err_L = norm((Lth-Lexp) / Lth)
err_U = norm((Uth-Uexp) / Uth)
err_P = norm((Pth-Pexp) / Pth)

disp(err_L, err_U, err_P)

endfunction 
