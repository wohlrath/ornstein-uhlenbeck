set terminal png size 1800,1000 enhanced font "Helvetica,20"

binw=0.01
set boxwidth binw
bin(x, width) = width*floor(x/width) + binw/2.0

set zeroaxis

xnula=1.
gamma=1.
sqrtc=0.3
sigmas(t)=sqrtc**2/2./gamma*(1-exp(-2*gamma*t))    # sigma**2
mu(t)=xnula*exp(-gamma*t)
f(x,t)=1/sqrt(2*pi*sigmas(t))*exp(-(x-mu(t))**2/2/sigmas(t))


sum=0
s(x) = ((sum=sum+1), 0) #normalizace binu

set yrange[-100:100]
set xrange[-100:100]
plot "hist.dat" u ($1):(s($1))
set xrange[-0.5:1.5]
set yrange[0:4]
set xlabel 'x'
set ylabel 'p(x)'
dt=0.002*50
set samples 10000

set label 1 at -0.45,3.5 'x_0=1, gamma=1, sigma=0.3'

set output 'animation/hist1.png'
set title 't=0.1'
plot 'hist.dat' u (bin($1,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*1) notitle

set output 'animation/hist2.png'
set title 't=0.2'
plot 'hist.dat' u (bin($2,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*2) notitle

set output 'animation/hist3.png'
set title 't=0.3'
plot 'hist.dat' u (bin($3,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*3) notitle

set output 'animation/hist4.png'
set title 't=0.4'
plot 'hist.dat' u (bin($4,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*4) notitle

set output 'animation/hist5.png'
set title 't=0.5'
plot 'hist.dat' u (bin($5,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*5) notitle

set output 'animation/hist6.png'
set title 't=0.6'
plot 'hist.dat' u (bin($6,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*6) notitle

set output 'animation/hist7.png'
set title 't=0.7'
plot 'hist.dat' u (bin($7,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*7) notitle

set output 'animation/hist8.png'
set title 't=0.8'
plot 'hist.dat' u (bin($8,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*8) notitle

set output 'animation/hist9.png'
set title 't=0.9'
plot 'hist.dat' u (bin($9,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*9) notitle

set output 'animation/hist10.png'
set title 't=1.0'
plot 'hist.dat' u (bin($10,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*10) notitle

set output 'animation/hist11.png'
set title 't=1.1'
plot 'hist.dat' u (bin($11,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*11) notitle

set output 'animation/hist12.png'
set title 't=1.2'
plot 'hist.dat' u (bin($12,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*12) notitle

set output 'animation/hist13.png'
set title 't=1.3'
plot 'hist.dat' u (bin($13,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*13) notitle

set output 'animation/hist14.png'
set title 't=1.4'
plot 'hist.dat' u (bin($14,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*14) notitle

set output 'animation/hist15.png'
set title 't=1.5'
plot 'hist.dat' u (bin($15,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*15) notitle

set output 'animation/hist16.png'
set title 't=1.6'
plot 'hist.dat' u (bin($16,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*16) notitle

set output 'animation/hist17.png'
set title 't=1.7'
plot 'hist.dat' u (bin($17,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*17) notitle

set output 'animation/hist18.png'
set title 't=1.8'
plot 'hist.dat' u (bin($18,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*18) notitle

set output 'animation/hist19.png'
set title 't=1.9'
plot 'hist.dat' u (bin($19,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*19) notitle

set output 'animation/hist20.png'
set title 't=2.0'
plot 'hist.dat' u (bin($20,binw)):(1.0/(binw*sum)) smooth freq w boxes notitle, \
	f(x,dt*20) notitle



unset label 1
set terminal wxt
set output