function [y0 N0]= convsig(x,n,h,m)
s=min(min(n), min(m))
N0=s:s+length(m)+length(n)-2

for i=1:length(m)
    y(:,i)=x*h(i)
end

y0=zeros(1,length(N0))

for N=1:length(N0)
    for i= 1:N
        j=N+1-i
        if(i<=length(n)&& j<=length(m))
            y0(N) = y0(N)+y(i,j)
        end
    end
end



