#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#define e 0.0001

int user_power,i=0,cnt=0,flag=0;
int coef[10]={0};
float x1,x2,x3=0,t=0;
float fx1=0,fx2=0,fx3=0,temp=0;
int check()
{
    printf("\n\tINTIAL X1---->");
    scanf("%f",&x1);

    printf("\n\tINTIAL X2---->");
    scanf("%f",&x2);

    fx1=fx2=fx3=0.0;


    for(i=user_power;i>=1;i--)
    {
            fx1+=coef[i] * (pow(x1,i)) ;
            fx2+=coef[i] * (pow(x2,i))  ;
    }
    fx1+=coef[0];
    fx2+=coef[0];
    if( (fx1*fx2)>0)
    {
        printf("\n\t INTIAL VALUES ARE NOT PERFECT.");
        return(1);
    }
    return(0);
}


void main()
{

    clrscr();
    printf("\n\n\t\t\t PROGRAM FOR REGULAR-FALSI GENERAL");


    printf("\n\tENTER THE TOTAL NO. OF POWER:::: ");
    scanf("%d",&user_power);

    for(i=0;i<=user_power;i++)
    {
        printf("\n\t x^%d::",i);
        scanf("%d",&coef[i]);
    }

    printf("\n");

    printf("\n\t THE POLYNOMIAL IS ::: ");
    for(i=user_power;i>=0;i--)//printing coeff.
    {
        printf(" %dx^%d",coef[i],i);
    }

    while(1)
    {
        if(check()==0)
        {
            flag=1;
            break;
        }
        check();
    }

    printf("\n ******************************************************");
    printf("\n ITERATION    X1    FX1    X2    FX2     X3       FX3   ");
    printf("\n **********************************************************");

    if(flag==1)
    {

        do
        {
            cnt++;
            fx1=fx2=fx3=0;
            for(i=user_power;i>=1;i--)
            {
                fx1+=coef[i] * (pow(x1,i)) ;
                fx2+=coef[i] * (pow(x2,i))  ;
            }
            fx1+=coef[0];
            fx2+=coef[0];
            temp=x3;
            x3=((x1*fx2)-(x2*fx1))/(fx2-fx1);

            for(i=user_power;i>=1;i--)
            {
                fx3+=coef[i]*(pow(x3,i));
            }
            fx3+=coef[0];

            printf("\n %d     %.4f  %.4f  %.4f  %.4f  %.4f  %.4f",cnt,x1,fx1,x2,fx2,x3,fx3);
            t=fx1*fx3;
            if(t>0)
            {
                x1=x3;

            }
            if(t<0)
            {
                x2=x3;
            }
            fx3=0;
        }while((fabs(temp-x3))>=e);
        printf("\n\t ROOT OF EQUATION IS ::::: %f",x3);
    }
    getch();
}
/*******************************OUTPUT**********************************/

    ENTER THE TOTAL NO. OF POWER:::: 3

     x^0::-6

     x^1::-2

     x^2::0

     x^3::4


     THE POLYNOMIAL IS :::  4x^3 0x^2 -2x^1 -6x^0
    INTIAL X1---->1.25

    INTIAL X2---->1.50

 **********************************************************
 ITERATION    X1    FX1    X2    FX2     X3       FX3
 **********************************************************
 1     1.2500  -0.6875  1.5000  4.5000  1.2831  -0.1159
 2     1.2831  -0.1159  1.5000  4.5000  1.2886  -0.0188
 3     1.2886  -0.0188  1.5000  4.5000  1.2895  -0.0030
 4     1.2895  -0.0030  1.5000  4.5000  1.2896  -0.0005
 5     1.2896  -0.0005  1.5000  4.5000  1.2896  -0.0001
************************************************************

     ROOT OF EQUATION IS ::::: 1.289620