function[xf,nf]=foldingsig(x,n)
xf=x(size(x,2):-1:1)
nf=-n(size(n,2):-1:1)