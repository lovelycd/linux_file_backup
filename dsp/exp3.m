i = 0:7;
X_1n_8=[1 1 1 1 0 0 0 0]
subplot(7,3,1)
stem(i,X_1n_8)
output=ufft(X_1n_8)
output_abs=abs(output)
subplot(7,3,2)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,3)
stem(i,output_angle)

i=0:15
X_1n_16=[1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0]
subplot(7,3,4)
stem(i,X_1n_16)
output=ufft(X_1n_16)
output_abs=abs(output)
subplot(7,3,5)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,6)
stem(i,output_angle)


i=0:7
X_4n_8=cos(pi/4*i)
subplot(7,3,7)
stem(i,X_4n_8)
output=ufft(X_4n_8)
output_abs=abs(output)
subplot(7,3,8)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,9)
stem(i,output_angle)


i=0:15
X_4n_16=cos(pi/4*i)
subplot(7,3,10)
stem(i,X_4n_16)
output=ufft(X_4n_16)
output_abs=abs(output)
subplot(7,3,11)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,12)
stem(i,output_angle)

fs=64
Ts=1/fs
i=0:15
nT=i*Ts
X_6n_16=cos(8*pi*nT)+cos(16*pi*nT)+cos(220*pi*nT)
subplot(7,3,13)
stem(i,X_6n_16)
output=ufft(X_6n_16)
output_abs=abs(output)
subplot(7,3,14)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,15)
stem(i,output_angle)


i=0:31
nT=i*Ts
X_6n_32=cos(8*pi*nT)+cos(16*pi*nT)+cos(220*pi*nT)
subplot(7,3,16)
stem(i,X_6n_32)
output=ufft(X_6n_32)
output_abs=abs(output)
subplot(7,3,17)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,18)
stem(i,output_angle)



i=0:63
nT=i*Ts
X_6n_64=cos(8*pi*nT)+cos(16*pi*nT)+cos(220*pi*nT)
subplot(7,3,19)
stem(i,X_6n_64)
output=ufft(X_6n_64)
output_abs=abs(output)
subplot(7,3,20)
stem(i,output_abs)
output_angle=angle(output)
subplot(7,3,21)
stem(i,output_angle)




