set xrange [0:64]
set yrange [0:64]
set xlabel 'j_1'
set ylabel 'j_2'
set terminal eps
set output '../picdiscretlog3.eps'
plot 'pgdata2.dat' matrix with image notitle
set terminal pdf
set output '../picdiscretlog3.pdf'
plot 'pgdata2.dat' matrix with image notitle