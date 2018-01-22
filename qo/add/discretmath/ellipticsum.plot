set view 0,0
set isosample 500,500
set contour base
set cntrparam levels discrete 0
unset surface
set grid
unset key
unset ztics
f(x,y) = x**3 - 7*x + 10 - y**2
line1(x,y) = (x - 1)/(3 - 1) - (y - 2)/(4 - 2)
line2(x,y) = x + 3
set ylabel 'y' offset -2,0
set xlabel 'x' offset 0,0
set label 'p' at 0.8,4
set label 'q' at 3,3
set label 'r' at -3.8,-2
set label '-r' at -4,2


set terminal pdf
set output './picellipticsum.pdf'
set object circle at first 1,2 radius char 0.25
set object circle at first 3,4 radius char 0.25
set object circle at first -3,-2 radius char 0.25
set object circle at first -3,2 radius char 0.25
splot [-10:10][-10:10] f(x,y), line1(x,y), line2(x,y)

set terminal eps
set output './picellipticsum.eps'
set object circle at first 1,2 radius char 0.25
set object circle at first 3,4 radius char 0.25
set object circle at first -3,-2 radius char 0.25
set object circle at first -3,2 radius char 0.25
splot [-10:10][-10:10] f(x,y), line1(x,y), line2(x,y)