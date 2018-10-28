clear all
x=input('enter input signal 1');
n= input('enter indices of 1stinput');
x=input('enter input signal 2');
m= input('enter indices of  2nd input');
[a b m]=padding2(s1,n,s2,m); 
[sumout mulout] = sumandmulsig(a,b);
