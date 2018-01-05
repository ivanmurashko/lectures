set terminal eps
set xrange [0:31]
set yrange [0:31]
set xlabel 'j_1'
set ylabel 'j_2'
set output '../picdiscretlog2.eps'
plot 'pgdata2.dat' matrix with image notitle