%scaling_exp main fun
clear all
x=input('enter sig')
a=input('enter amount of scale must be >1')
n=input('enter indices of x')
[xs,ns]=scaling_expansion(x,n,a);
stem(ns,xs)