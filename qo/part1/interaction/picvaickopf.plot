set terminal latex
set ytics 0,.25,1
unset xtics
set label "$\left|C_{a,n}\right|^2$" at -6,1.05
plot [0:4][0:1.1] exp(-2*x) notitle
