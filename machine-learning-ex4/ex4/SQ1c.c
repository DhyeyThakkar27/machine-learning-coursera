#include<stdio.h>
void main()
{
	int i,j;
	char a[100],b[100],c[200];
	gets(a);
	gets(b);
	for(i=0;a[i]!='\0';++i)
		c[i]=a[i];
	for(j=0;b[j]!='\0';++j)
		c[i+j]=b[j];

}