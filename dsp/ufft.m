function output = ufft(seq)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
len=length(seq);
len_log=log(len)/log(2);
len_log=ceil(len_log);
len_seq=2^len_log;
seq_r=linspace(0,0,len_seq);
for n=0:len_seq-1
    m=n;
    m=dec2bin(m,len_log);
    m=reverse(m);
    m=bin2dec(m);
    if m+1>len
        temp=0;
    else
        temp=seq(m+1);
    end
    seq_r(n+1)=temp;
end

for cal_c=1:len_log
    num=2^cal_c;         %num表示每组参与运算的数目
    group=2^(len_log-cal_c);         %group表示当前的此次变换分成的组数
    for group_c=1:group
        for group_num=1:num/2
            mark=(group_c-1)*num+group_num;
            temp1=seq_r(mark);
            temp2=seq_r(mark+num/2)*exp(-j*2*pi*(group_num-1)/num);
            seq_r(mark)=temp1+temp2;
            seq_r(mark+num/2)=temp1-temp2;
        end
    end
end


output=seq_r;
end

