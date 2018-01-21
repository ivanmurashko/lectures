set view 0,0
set isosample 500,500
set contour base
set cntrparam levels discrete 0
unset surface
set grid
unset key
unset ztics
set xlabel 'x'
set ylabel 'y'
f(x,y) = x**3 + 3*x + 2 - y**2
set terminal pdf
set output './picelliptic.pdf'
splot [-10:10][-10:10] f(x,y)
set terminal eps
set output './picelliptic.eps'
splot [-10:10][-10:10] f(x,y)
