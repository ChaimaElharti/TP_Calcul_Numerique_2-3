set term png size 1900,1000

set output "matmat"

set grid

set title "Optimization of the LU factorization"

set ylabel "Data"

set xlabel "Time in microseconds"

plot "out0.dat" using 2:1 w lp t "matmat1b", "out1.dat" using 2:1 w lp t "matmat2b", "out2.dat" using 2:1w lp t "matmat3b"
