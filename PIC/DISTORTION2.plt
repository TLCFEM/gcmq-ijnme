reset
set term tikz size 6cm,3.5cm
set output "DISTORTION2.tex"
set key Left samplen 1 spacing 1.1 width 1 center at 1.4,40 maxrows 3
set xrange [0:4.5]
set yrange [0:80]
set xlabel "$e$"
set ylabel "tip deflection error \\si{\\percent}"
set xtics 1
set ytics 20
set margins 0,0,0,0
set grid xtics ytics mxtics mytics lt 1 lw 1 lc rgb "#EEEEEE"
plot "DISTORTION" using 1:(100-($8+$9)/1.5) w linespoints lw 2 pt 1 lc rgb "#d7191c" title "GCMQ-I",\
     "DISTORTION" using 1:(100-($10+$11)/1.5) w linespoints lw 2 pt 2 lc rgb "#fdae61" title "GCMQ-L",\
     "DISTORTION" using 1:(100-($12+$13)/1.5) w linespoints lw 2 pt 3 lc rgb "#abd9e9" title "GCMQ-G"
set output