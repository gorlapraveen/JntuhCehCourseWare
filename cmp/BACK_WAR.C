#include<stdio.h>
#include<conio.h>
main()
{
     int x[10],y[10][10],n,d,j,k;
     printf( " no of x values");
     scanf("%d",&n);
     printf( "  x values");
      scanf("%d",&x[0]);
      printf( " difference bw values");
      scanf("%d",&d);
for (int i =1;i<n;i++)
     {
          x[i]=(x[0]+(i*d));
          }
          
          for (int i =0;i<n;i++)
     {
          printf( "  x values %d",x[i]);
          }
           for (int i =0;i<n;i++)
     {
           printf( " enter y values \n ");
           scanf("%d",&y[i][0]);
          }
          

*/ forward/*
#include<stdio.h>
#include<conio.h>
 void main()
{
     int x[10],y[10][10],n,d,j,k;
     printf( " no of x values");
     scanf("%d",&n);
     printf( "  x values");
      scanf("%d",&x[0]);
      printf( " difference bw values");
      scanf("%d",&d);
for (int i =1;i<n;i++)
     {
          x[i]=(x[0]+(i*d));
          }
          
          for (int i =0;i<n;i++)
     {
          printf( "  x values %d",x[i]);
          }
           for (int i =0;i<n;i++)
     {
           printf( " enter y values ");
           scanf("%d",&y[i][0]);
          }
          
    for(int k=1;k<n;k++)
    {
      for   (j =0;j<n-k-1;j++)
      
      {
            y[j+1][k]=y[j+1][k-1]-y[j][k-1] ;
            if(y[j][k]==0)
            {
               break;
            }
            printf("\n %d",y[j][k]);
            }
            }
            getch();
            }        

    for(int k=1;k<n;k++)
    {
            printf("\n %d forward diff:",k);
      for   (j =1;j<n-k;j++)
      {
            y[j][k]=y[j+1][k-1]-y[j][k-1] ;
            /*if(y[j][k]==0)
            {
               break;
            }*/
            printf("\n %d",y[j][k]);
            }
            }
            getch();
            }        