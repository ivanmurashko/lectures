set xrange [0:15]
set yrange [0:15]
set xlabel 'j_1'
set ylabel 'j_2'
set terminal eps
set output '../picdiscretlog2.eps'
plot 'pgdata2.dat' matrix with image notitle
set terminal pdf
set output '../picdiscretlog2.pdf'
plot 'pgdata2.dat' matrix with image notitle