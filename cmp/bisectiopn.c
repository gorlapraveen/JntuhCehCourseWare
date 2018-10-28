#include<stdio.h>
#include <math.h>
#include<conio.h>
#define ESP 0.001
#define F(x)=(x)*(x)*(x) + (x)*(x) + (x) + 7]
float fun(int g);
void main()
{
  int i = 1;
  float x0,x1,x2,o,a,b,c[10],d;
  double f1,f2,f0,t;
  clrscr();
printf("\nEnter the max value of equation: ");
 scanf("%f",&d);
for(i=d ; i=0 ; i--)
{
printf("enter the coefficient x%d",i);
       scanf("%d",c[i]);         
    }

  printf("\nEnter the value of x0: "); 
  scanf("%f",&x0);

  printf("\nEnter the value of x1: ");
  scanf("%f",&x1);
  printf("\n__________________________________________________________________\n");
  printf("\niteration\t x0\t       x1\t x2\t   f0\t   f1\t   f2");
  printf("\n___________________________________________________________________\n");
  do
  {
  x2=(x0+x1)/2;
  f0=fun(xo,d,c[10]);
  f1=fun(x1,d,c[10]);
  f2=fun(x2,d,c[10]);
  printf("\n%d %f %f %f %lf %lf %lf", i, x0,x1,x2,f0,f1,f2);
  if(f0*f2<0)
   {
    x1=x2;
   }
   else
   {
    x0=x2;
   }
   i++;
  }while(fabs(f2)>ESP);
printf("\n__________________________________________________________\n");
printf("\n\nApp.root = %f",x2);
getch();
}


float fun(int g,intl,float c[10])
{
float h=0;
for(i=l ; i=0 ; i--)
{
h=(c[i]*pow(g,i));
}
return h;        
    }

