function [even odd]=evenoddsig(x,n)
[xf,nf]=foldingsig(x,n)
even=(x+xf)/2;
odd=(x-xf)/2;