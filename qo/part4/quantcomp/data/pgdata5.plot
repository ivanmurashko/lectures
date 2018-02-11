set xrange [0:63]
set yrange [0:63]
set xlabel 'x_1'
set ylabel 'x_2'
set terminal eps
set output '../picellipticdiscretlog1.eps'
plot 'pgdata5.dat' matrix with image notitle
set terminal pdf
set output '../picellipticdiscretlog1.pdf'
plot 'pgdata5.dat' matrix with image notitle