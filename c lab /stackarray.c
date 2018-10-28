 // program to implement stack using arrays
#include<stdio.h>
#include<conio.h>
#define SIZE 5
int top=-1;
int s[SIZE];
void push(int);
int pop();
void display ();
 main()
{
int ch;
int item,y;
do
{
printf("\n\t MENU ");
printf("\n\t1.Push");
printf("\n\t2.Pop");
printf("\n\t3.Display.");
printf("\n\t4.Exit");
printf("\n Enter ur choice");
scanf ( "%d" , &ch) ;
switch(ch)
{
case 1 : printf("\n\t Enter the element: ");
	 scanf("%d",& item );
	 push(item);
	 break;
case 2:  y=pop();
         printf("\n\t the deleted value %d" ,y);
         break;
case 3 : display();
	 break;
case 4 : exit(0);
         break;
default: printf("Invalid Choice");
         break;
}
}while(ch<=4);
}
void push(int item )
{	
if(top==SIZE-1)
printf("\t stack is overflow");
else
{
top++;
s[top]= item ;
}
}
int pop()
{
int y;
if(top==-1)
printf("\n\t the stack is underflow");
else
{
y=s[top];
top--;
}
return y;
}
void display()
{
int i;
for(i=top;i>=0;i--)
printf( "%d\t",s[i]);
}


