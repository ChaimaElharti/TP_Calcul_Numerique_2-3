x = [1,2,3,4]; // Question 1
y = [1;2;3;4]; // Question 2

//Question 3 
z = x+y
s = x*y
//Pas possible car les matrices n'ont pas la même taille. 

//Question 4
size(x)
size(y)
// Cette fonction permet de déterminer la taille de nos vecteurs. 

//Question 5
norm(x)
//Par défaut, lorsqu'on ne précise pas quelle norme il faut appliquer
//à notre argument, c'est la norme 2 qui est appliquée. 

//Question 6
A = [1,2,3;
     4,5,6;
     7,8,9;
     10,11,12]

//Question 7
A'// Transposée
B = A'

// Question 8 : Opérations possibles
A+B
A*B
B*A

//Question 9
cond(A)
// Nous renseigne sur la capacité pour A à générer de l'erreur. 
