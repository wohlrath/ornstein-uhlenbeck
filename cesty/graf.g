#!/usr/bin/gnuplot

set terminal png size 1800,1000 enhanced font "Helvetica,20"
#set output '1.png'
#set output 't.png'
set output 'c.png'

#set title 'x_0=1, gamma=1, sigma=0.3'
#set title 'x_0=1, sigma=0.3'
set title 'x_0=1, , gamma=2'


set xlabel 't'
set ylabel 'x'

set xrange[0:2]

#set yrange[-0.5:1.5]
#plot '1.dat' u 1:2 lw 1 with lines notitle, \
#	'2.dat' u 1:2 lw 1 with lines notitle, \
#	'3.dat' u 1:2 lw 1 with lines notitle, \
#	'4.dat' u 1:2 lw 1 with lines notitle, \
#	'5.dat' u 1:2 lw 1 with lines notitle, \


#set yrange[-0.5:1.5]
#plot '1.dat' u 1:2 lw 1 with lines title 'gamma=1', 't1.dat' u 1:2 lw 1 with lines title 'gamma=4', 't2.dat' u 1:2 lw 1 with lines title 'gamma=10'

set yrange[-0.5:1.5]
plot 'c2.dat' u 1:2 lw 1 with lines title 'sigma=0.05', 'c3.dat' u 1:2 lw 1 with lines title 'sigma=0.15', 'c1.dat' u 1:2 lw 1 with lines title 'sigma=0.30', 'c4.dat' u 1:2 lw 1 with lines title 'sigma=1.00'


set terminal wxt
set output
