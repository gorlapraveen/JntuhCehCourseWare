x=input('enter signal:');
k=min(t);
h=input('enter signal:');
m=length(x);
n=length(h);
max=k+m+n-2
a=[x,zeros(1,n)];
b=[h,zeros(1,m)];
for i=1:n+m-1
    y(i)=0
for j=1:m
    if(i-j+1>0)
        y(i)=y(i)+a(j)*b(i-j+1)
    else
    end
end
end
t=k:0.1:max;
plot(t,y);



