#include<stdio.h>
#include<conio.h>
#include<math.h>
  int main()
{
  float x[10],y[10][10],sum=0,fin,u,temp;
  int i,n,j,k=0,f,m;
  float fact(int);
  
  printf("\nno of values of x: ");
  scanf("%d",&n);
  for(i=0; i<n; i++)
  {
   printf("\n\nenter the value of x%d: ",i);
   scanf("%f",&x[i]);
   printf("\n\nenter the value of f(x%d): ",i);
   scanf("%f",&y[k][i]);
  }

  printf("\n Enter X for finding f(x): ");
  scanf("%f",&fin);

  for(i=1;i<n;i++)
  {
    for(j=i;j<n;j++)
    {
     y[i][j]=y[i-1][j]-y[i-1][j-1];
    }
  }


  for(i=0;i<n;i++)
  {
    printf ("\n");
    for(j=i;j<n;j++)
    {
     printf ("\n%f",y[i][j]);
     
    }
  }

  i=0;
  do
  {
   if(x[i]<fin && fin<x[i+1])
    k=1;
   else
    i++;
  }while(k != 1);
  f=i+1;
  u=(fin-x[f])/(x[f]-x[f-1]);
  printf("\n\n u = %.3f ",u);

  n=n-i+1;
  sum=0;
  for(i=0;i<n;i++)
  {
   temp=1;
   for(j=0;j<i;j++)
   {
    temp = temp * (u + j);
   }
    m=fact(i);
    sum = sum - temp*(y[i][f]/m);
  }
  printf("\n\n f(%.2f) = %f ",fin,sum);
  getch();
}