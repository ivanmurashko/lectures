#set grid linestyle 2
set xrange [0:18]
set yrange [0:18]
set xlabel '$x$'
set ylabel '$y$'
set terminal latex
set output './picellipticfp.tex'
plot 'ellipticfp.dat'  with points pt 7 notitle
