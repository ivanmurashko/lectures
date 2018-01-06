set xrange [0:63]
set yrange [0:63]
set xlabel 'j_1'
set ylabel 'j_2'
set terminal eps
set output '../picdiscretlog3.eps'
plot 'pgdata3.dat' matrix with image notitle
set terminal pdf
set output '../picdiscretlog3.pdf'
plot 'pgdata3.dat' matrix with image notitle