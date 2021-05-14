#include<stdio.h>
void main()
{
	int i,temp;
	char a[100];
	gets(a);
	for(i=0;a[i]!='\0';++i);
	int l = i-1;
	for(i=0;i<l/2;++i)	
		{
			temp=a[i];
			a[i]=a[l-1-i];
			a[l-1li]=temp;  
		}
		
}