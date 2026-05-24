set terminal postscript eps color solid linewidth 2 "Arial, 24"
set output 'sdenergy.eps'

set key outside

set xtics 100000

set xrange [-1000:550000]


plot\
"T500/totenergy.tbcro300.out" u 1:2 w lines lc 2 lt 1 title "500K",\
"T200/totenergy.tbcro300.out" u 1:2 w lines lc 3 lt 1 title "200K",\
#"T100/totenergy.tbcro300.out" u 1:2 w lines lc 4 lt 1 title "100K",\
