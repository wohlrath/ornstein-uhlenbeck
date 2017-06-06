#!/usr/bin/octave -qf
clear
tlumeni=2;
insum=1; #intenzita sumu (sqrt c)
xnula=1;

dt=0.0001;
pocetkroku=20000;
tmax=dt*pocetkroku;

#x(t+dt)=A*x+B*n     evoluce
A=exp(-tlumeni*dt);
B=insum*sqrt(1./2/tlumeni*(1-exp(-2*tlumeni*dt)) );

x=[0,xnula];
for j=2:pocetkroku
	x(j,1)=(j-1)*dt;
	x(j,2)=A*x(j-1,2)+B*normrnd(0,1);
endfor

save('cesty/c4.dat', 'x', '-text');
