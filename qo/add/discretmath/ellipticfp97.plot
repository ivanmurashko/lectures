#set grid linestyle 2
set xrange [0:96]
set yrange [0:96]
set xlabel '$x$'
set ylabel '$y$'
set terminal latex
set output './picellipticfp97.tex'
plot 'ellipticfp97.dat'  with points pt 7 notitle
