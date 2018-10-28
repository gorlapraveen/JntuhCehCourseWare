#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
 float x[20],y[20],sumx=0,sumy=0,sumx2=0,sumxy=0,a,b,i,n,A,B;
 clrscr();
 printf("enter no. of values to be entered: ");
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
  sumxy+=x[i]*y[i];
 }
 printf("sumx=%f\nsumy=%f\nsumx2=%f\nsumxy=%f\n",sumx,sumy,sumx2,sumxy);
 B=((sumx*sumy)-n*sumxy)/((sumx*sumx)-n*sumx2);
 A=(sumy-b*sumx)/n;
 a=pow(10,A);
 b=pow(10,B);
 printf("a=%f\nb=%f",a,b);
 printf("\nthe required line is y=%f + %fx",a,b);
 getch();
}

