#include<stdio.h>
void main()
{
	int i;
	char a[100];
	gets(a);
	for(i=0;a[i]!='\0';++i)
		printf("%d",int(a[i]));

}