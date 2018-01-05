set terminal pdf
set pm3d map
set xrange [0:31]
set yrange [0:31]
set xlabel 'x_1'
set ylabel 'x_2'
set output '../picdiscretlog0.pdf'
splot 'pgdata0.dat' matrix notitle
