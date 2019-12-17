A=44.128;
a=50*sqrt(2)*pi;
freq0=50*sqrt(2)*pi;
fs=1000
Ts=1/fs
t=0:0.00001:0.05
X_at=A*exp(-a*t).*sin(freq0*t)
subplot(3,3,1)
plot(t,X_at);
n=0:49;
nT=n*Ts;
X_an0=A*exp(-a*nT).*sin(freq0*nT)
subplot(3,3,2)
stem(nT,X_an0)
X_ejwktemp=0
X_ejwk0=[]
for m=0:100*pi
    for n=0:49
        X_ejwktemp=X_ejwktemp+X_an0(n+1)*exp(-1*j*2*pi*m/50*n)
    end
    X_ejwk0=[X_ejwk0,X_ejwktemp]
    X_ejwktemp=0
end
X_ejwk0=abs(X_ejwk0)
m=0:100*pi
subplot(3,3,3)
plot(m,X_ejwk0)


fs=300
Ts=1/fs
n=0:49;
nT=n*Ts;
X_an1=A*exp(-a*nT).*sin(freq0*nT)
subplot(3,3,4)
stem(nT,X_an1)
X_ejwk1=[]
for m=0:100*pi
    for n=0:49
        X_ejwktemp=X_ejwktemp+X_an1(n+1)*exp(-1*j*2*pi*m/50*n)
    end
    X_ejwk1=[X_ejwk1,X_ejwktemp]
    X_ejwktemp=0
end
X_ejwk1=abs(X_ejwk1)
m=0:100*pi
subplot(3,3,5)
plot(m,X_ejwk1)



fs=200
Ts=1/fs
n=0:49;
nT=n*Ts;
X_an2=A*exp(-a*nT).*sin(freq0*nT)
subplot(3,3,6)
stem(nT,X_an2)
X_ejwk2=[]
for m=0:100*pi
    for n=0:49
        X_ejwktemp=X_ejwktemp+X_an2(n+1)*exp(-1*j*2*pi*m/50*n)
    end
    X_ejwk2=[X_ejwk2,X_ejwktemp]
    X_ejwktemp=0
end
X_ejwk2=abs(X_ejwk2)
m=0:100*pi
subplot(3,3,7)
plot(m,X_ejwk2)












