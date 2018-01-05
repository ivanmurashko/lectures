set terminal eps
set xrange [0:31]
set yrange [0:31]
set xlabel 'x_1'
set ylabel 'x_2'
set output '../picdiscretlog1.eps'
plot 'pgdata1.dat' matrix with image notitle