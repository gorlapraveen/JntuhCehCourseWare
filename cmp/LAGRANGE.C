#include<conio.h>
#include<stdio.h>
#include<math.h>
void main()
{
 float n,x[50],y[50],xg,i,j,num,den,sum=0;
 clrscr();
 printf("\n enter the initial number of x and y values u want to give:");
 scanf("%f",&n);
 printf("\n nter the x array values: ");
 for(i=0;i<=n;i++)
 scanf("&f",&x[i]);
 printf("\n enter the y values:%f",x[i]);
 for(i=0;i<=n;i++)
 scanf("%f",&y[i]);
 printf("\n enter the xy value to get its corresponding y value:");
 for(i=0;i<=n;i++)
 scanf("%f",&xg);
 for(j=0;j<=n;j++)
 {
  den=1;num=1;
  for(i=0;i<n;i++)
  {
   if(i==j)
   continue;
   else
   {
    num=num*(xg-x[i]);
    den=den*(x[j]-x[i]);
   }
  }
  sum=sum+(y[j]*(num/den));
 }
 printf("\nlagrange interpolated value for xg=%f is %f ",xg,sum);
 getch();
}

