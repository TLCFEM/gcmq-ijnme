reset
set term tikz size 6cm,4cm
set output "PLATESTRESSB.tex"
set key Left samplen 1 spacing 1.1 width -1 right top at screen .95,.9 maxrows 4
set xrange [1:5]
set yrange [.5:3.5]
set xlabel "y ($\\rho$)"
set ylabel "stress $\\sigma_x$"
set xtics 1
set ytics 1
set margins 0,0,0,0
set grid xtics ytics mxtics mytics lt 1 lw 1 lc rgb "#EEEEEE"
f(x)=1+.5/x/x+1.5/x/x/x/x
plot "PLATESTRESS-I4" using 1:3 w points lw 2 pt 1 ps 1.5 lc rgb "#d53e4f" title "-I mesh a",\
     "PLATESTRESS-I8" using 1:3 w points lw 2 pt 2 ps 1.5 lc rgb "#fc8d59" title "-I mesh b",\
     "PLATESTRESS-I16" using 1:3 w points lw 2 pt 3 ps 1.5 lc rgb "#fee08b" title "-I mesh c",\
     "PLATESTRESS-L4" using 1:3 w points lw 2 pt 4 ps 1.5 lc rgb "#e6f598" title "-L mesh a",\
     "PLATESTRESS-L8" using 1:3 w points lw 2 pt 5 ps 1.5 lc rgb "#99d594" title "-L mesh b",\
     "PLATESTRESS-L16" using 1:3 w points lw 2 pt 6 ps 1.5 lc rgb "#3288bd" title "-L mesh c",\
     f(x) lw 3 title "analytical"
set output