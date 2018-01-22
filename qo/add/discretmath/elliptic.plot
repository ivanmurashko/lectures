set view 0,0
set isosample 500,500
set contour base
set cntrparam levels discrete 0
unset surface
set grid
unset key
unset ztics
f1(x,y) = x**3 + (-4)*x + 2 - y**2
f2(x,y) = x**3 + (-1)*x + 2 - y**2
f3(x,y) = x**3 + 1*x + 2 - y**2
f4(x,y) = x**3 + 4*x + 2 - y**2
set terminal pdf
set output './picelliptic.pdf'
### Start multiplot (2x2 layout)
set multiplot layout 2,2 \
              margins 0.1,0.9,0.1,0.9 \
              spacing 0.12,0.12

unset xlabel
unset ylabel
set title 'a=-4'
splot [-10:10][-10:10] f1(x,y)

set title 'a=-1'
set ylabel 'y' offset -2,0
splot [-10:10][-10:10] f2(x,y)

set title 'a=1'
set xlabel 'x' offset 0,0
unset ylabel
splot [-10:10][-10:10] f3(x,y)

set title 'a=4'
set ylabel 'y' offset -2,0
set xlabel 'x' offset 0,0
splot [-10:10][-10:10] f4(x,y)
unset multiplot

set terminal eps
set output './picelliptic.eps'
### Start multiplot (2x2 layout)
set multiplot layout 2,2 \
              margins 0.1,0.9,0.1,0.9 \
              spacing 0.12,0.12

unset xlabel
unset ylabel
set title 'a=-4'
splot [-10:10][-10:10] f1(x,y)

set title 'a=-1'
set ylabel 'y' offset -2,0
splot [-10:10][-10:10] f2(x,y)

set title 'a=1'
set xlabel 'x' offset 0,0
unset ylabel
splot [-10:10][-10:10] f3(x,y)

set title 'a=4'
set ylabel 'y' offset -2,0
set xlabel 'x' offset 0,0
splot [-10:10][-10:10] f4(x,y)
unset multiplot
