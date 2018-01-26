set xrange [0:63]
set yrange [0:63]
set xlabel 'j_1'
set ylabel 'j_2'
set terminal eps
set output '../picdiscretlog4.eps'
plot 'pgdata4.dat' matrix with image notitle
set terminal pdf
set output '../picdiscretlog4.pdf'
plot 'pgdata4.dat' matrix with image notitle