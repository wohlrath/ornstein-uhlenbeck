#!/usr/bin/gnuplot

set terminal png size 1800,1000 enhanced font "Helvetica,20"
set output 'mu.png'

set title 'stredni hodnota'
pocetcastic=10000
xnula=1.
gamma=1.
sqrtc=0.3
mu(t)=xnula*exp(-gamma*t)
sigmas(t)=sqrtc**2/2./gamma*(1-exp(-2*gamma*t))    # sigma**2
set xlabel 't'
set ylabel 'mu'

set xrange[0:2]
set yrange[0:1]
set label 1 at 0.2,0.2 'x_0=1, gamma=1, sigma=0.3'
plot 'suma.dat' u 1:($2/pocetcastic) lw 2 with lines title 'simulace', mu(x) lw 2 title 'x_0*exp(-gamma*t)'
unset label 1


set yrange[0:0.3]
set output 'sigma.png'
set title 'standardni odchylka'
set ylabel 'sigma'
set label 1 at 1.5,0.05 'x_0=1, gamma=1, sigma=0.3'
plot 'suma.dat' u 1:(sqrt( $3/pocetcastic  -  ($2/pocetcastic)**2  ))  lw 2 with lines notitle, sqrt(sigmas(x)) lw 2 notitle
unset label 1

set terminal wxt
set output
