#!/usr/bin/octave -qf
clear
tlumeni=1;
insum=0.3; #intenzita sumu (sqrt c)


dt=0.001;
pocetkroku=2000;
tmax=dt*pocetkroku;

#x(t+dt)=A*x+B*n     evoluce
A=exp(-tlumeni*dt);
B=insum*sqrt(1./2/tlumeni*(1-exp(-2*tlumeni*dt)) );

pocetcastic=10000;

suma=zeros(pocetkroku,1);
sumactvercu=zeros(pocetkroku,1);

xnula=1;

for i=1:pocetcastic
	x=xnula;
	for j=1:pocetkroku
		suma(j)+=x;
		sumactvercu(j)+=x^2;
		x=A*x+B*normrnd(0,1);
		if(rem(j,100)==0)
			hist(i,j/100)=x;
		endif
	endfor
endfor

t=1:pocetkroku;
t=t';
t*=dt;
s=[t,suma, sumactvercu];

save('hist.dat', 'hist', '-text');
save('suma.dat', 's', '-text');