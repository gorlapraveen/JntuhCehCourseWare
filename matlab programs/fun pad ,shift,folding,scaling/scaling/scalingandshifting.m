function[out]=scalingandshifting(a,s,n)
s=input('enter a signal:');
a=input('enter a scalar:');
t=0:0.1:10;
n=t;
if a>1
   
    input('  enter 1 for left shift') ;
    input('  enter 2 for right shift');
    input('  enter 3 for compressing');
    input('  enter 4 for expanding');
    
else 
    t1=expantion;
    t2=compression;
    input('  enter 1 for left shift') ;
    input('  enter 2 for right shift');
    
    input('  enter 3 for expanding');
    input('  enter 4 for compressing');
end
subplot(3,1,1);
plot(n,s)
func=input('enter a number:');
switch func
    
case {1}
        n1=t-a;
title('left shifting');
subplot(5,1,2);
plot(n1,s);

case {2}
n2=t+a;
title('right shifting')
subplot(5,1,3);
plot(n2,s);

case {3}
n3=t*a;
title('t1 ');
subplot(5,1,4);
plot(n3,s);

case {4}
n4=t/a;
title('t2 ');
subplot(5,1,5);
plot(n4,s);

end
