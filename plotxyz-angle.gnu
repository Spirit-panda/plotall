set terminal postscript color solid linewidth 2 "Arial, 10"
set output "thetazfy.eps"
set key inside
set multiplot layout 3,3
set xtics 7000
set ytics 5

set origin 0,0
set size 0.32,0.32
set xlabel "site"
set ylabel "all-angle"
plot\
"angleall" u 3:($4>5 ? $8 : NaN) w p ps 1 pt 6 lc 4 t "tbthetax",\
"angleall" u 3:($4<3 ? $8 : NaN) w p ps 1 pt 6 lc 1 t "crthetax",\

set origin 0.3,0
set size 0.32,0.32
set xlabel "site"
set ylabel "all-angle"
plot\
"angleall" u 3:($4>5 ? $9 : NaN) w p ps 1 pt 2 lc 5 t "tbthetay",\
"" u 3:($4<3 ? $9 : NaN) w p ps 1 pt 3 lc 2 t "crthetay",\

set origin 0.6,0
set size 0.32,0.32
set xlabel "site"
set ylabel "all-angle"
plot\
"angleall" u 3:($4>5 ? $10 : NaN) w p ps 1 pt 2 lc 6 t "tbthetaz",\
"" u 3:($4<3 ? $10 : NaN) w p ps 1 pt 3 lc 3 t "crthetaz",\


set origin 0,0.3
set size 0.32,0.32
set xlabel  "site"
set ylabel "cr-angle"
plot\
"anglecr" u 3:8 w p ps 1 pt 3 lc 1 t "thetax",\

set origin 0.3,0.3
set size 0.32,0.32
set xlabel  "site"
set ylabel "cr-angle"
plot\
"anglecr" u 3:9 w p ps 1 pt 3 lc 2 t "thetay",\

set origin 0.6,0.3
set size 0.32,0.32
set xlabel  "site"
set ylabel "cr-angle"
plot\
"anglecr" u 3:10 w p ps 1 pt 3 lc 3 t "thetaz",\


set origin 0,0.6
set size 0.32,0.32
set xlabel  "site"
set ylabel "tb-angle"
plot\
"angletb" u 3:8 w p ps 1 pt 3 lc 4 t "thetax",\

set origin 0.3,0.6
set size 0.32,0.32
set xlabel  "site"
set ylabel "tb-angle"
plot\
"angletb" u 3:9 w p ps 1 pt 3 lc 5 t "thetay",\

set origin 0.6,0.6
set size 0.32,0.32
set xlabel  "site"
set ylabel "tb-angle"
plot\
"angletb" u 3:10 w p ps 1 pt 3 lc 6 t "thetaz",\


