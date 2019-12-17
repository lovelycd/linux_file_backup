X_n=[]
temp=0
for i=0:13
    temp=i+1;
    X_n=[X_n,temp]
end
for i=14:26
    temp=27-i
    X_n=[X_n,temp]
end
n=0:26
subplot(3,3,1)
stem(n,X_n)


X_ejw=[]
temp=0
for w=0:0.02:20
    for n=0:26
    temp=temp+X_n(n+1)*exp(-j*w*n);
    end
    X_ejw=[X_ejw,temp]
    temp=0
end
X_ejw=abs(X_ejw)
subplot(3,3,2)
w=0:0.02:20
plot(w,X_ejw)


X_n_c32=[]
temp=0
for m=0:31
     mm=m
    while(1)
        if (mm>-1)&(mm<27)
            temp1=X_n(mm+1)
            temp=temp1+temp
        else
            break
        end
        mm=mm+32
    end
    X_n_c32=[X_n_c32,temp]
    temp=0
end

m=0:31
subplot(3,3,3)
stem(m,X_n_c32)


X_n_c16=[]
temp=0
for m=0:15
     mm=m
    while(1)
        if (mm>-1)&(mm<27)
            temp1=X_n(mm+1)
            temp=temp1+temp
        else
            break
        end
        mm=mm+16
    end
    X_n_c16=[X_n_c16,temp]
    temp=0
end

m=0:15
subplot(3,3,4)
stem(m,X_n_c16)






    


