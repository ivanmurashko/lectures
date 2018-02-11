set xrange [0:63]
set yrange [0:63]
set xlabel 'j_1'
set ylabel 'j_2'
set terminal eps
set output '../picellipticdiscretlog2.eps'
plot 'pgdata6.dat' matrix with image notitle
set terminal pdf
set output '../picellipticdiscretlog2.pdf'
plot 'pgdata6.dat' matrix with image notitle