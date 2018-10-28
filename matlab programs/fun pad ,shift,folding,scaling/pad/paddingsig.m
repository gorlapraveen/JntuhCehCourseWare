function[s1out s2out np]=paddingsig(s1,m,s2,n)
% pad to min limits

 k=abs(min(m)-min(n)) 
if min(m)<min(n)
for i=1:k
        s2=[0 s2];
end
else
 for i=1:k            
         s1=[0 s1];
end
end
%pad to the max limits
 k=abs(max(m)-max(n)) 
if max(m)<max(n)
for i=1:k    
        s1=[s1 0];
end    
else
for i=1:k            
         s2=[s2 0];
end
end
s1out=s1;
s2out=s2;
np=min(min(m),min(n)):max(max(m),max(n));
