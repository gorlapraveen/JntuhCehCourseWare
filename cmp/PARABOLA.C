#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
 float x[20],y[20],sumx=0,sumy=0,sumx4=0,sumx2=0,sumx3=0,sumxy=0,sumx2y=0,l,a,m,b,c,q,r,p,i,n,k;
 clrscr();
 printf("enter value of n: ");
 scanf("%f",&n);
 printf("\nenter the values of x:\n");
 for(i=0;i<n;i++)
 scanf("%f",&x[i]);
 printf("\nenter the va;lues of y:\n");
 for(i=0;i<n;i++)
 scanf("%f",&y[i]);
 for(i=0;i<n;i++)
 {
  sumx+=x[i];
  sumy+=y[i];
  sumx2+=pow(x[i],2);
  sumx3+=pow(x[i],3);
  sumx4+=pow(x[i],4);
  sumxy+=x[i]*y[i];
  sumx2y+=(pow(x[i],2)*y[i]);
 }
 printf("sumx=%f\tsumy=%f\tsumx2=%f\tsumx3=%f\tsumx4=%f\tsumxy=%f\tsumx2y=%f\t",sumx,sumy,sumx2,sumx3,sumx4,sumxy,sumx2y);
 p=((sumx*sumy)-(n*sumxy));
 q=(pow(sumx2,2)-(n*sumx2));
 r=l=(sumx*sumx2-(n*sumx3));
 m=(sumx2*sumy-(n*sumx2y));
 k=(pow(sumx2,2)-(n*sumx4));
 c=((p*l)-(m*q))/((l*r)-(k*q));
 b=(p-(c*r))/q;
 a=(sumy-(b*sumx)-(c*sumx2))/n;
 printf("a=%f\nb=%f\nc=%f\n",a,b,c);
 printf("the req parabola y=%f+%f*x+%f*x^2",a,b,c);
 getch();
}

