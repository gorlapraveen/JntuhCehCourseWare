% scaling of a function by using logic- 
function [xs,ns]=scaling_expansion (x,n,a)
y=cell(1,a)
for i=1:length(x)
y{i}=[x(i) zeros(1,a-1)]
end
s=cell2mat(y)
n1=min(n)*a
n2=max(n)*a
ns=n1:n2+a-1
xs=s
