set term png size 1900,1000

set output "mylu"

set grid

set ylabel "Data"

set xlabel "Time (s) "

plot "out0.dat" w lp t "mylu1b", "out1.dat" w lp t "mylu3b", "out2.dat" w lp t "mylu"
