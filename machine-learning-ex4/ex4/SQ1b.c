#include <stdio.h>
void main()
{
	int i,flag,l1,l2;
	flag = 1;
	for(i=0;a[i] != '\0';++i);
		l1=i;
	for(i=0;b[i] != '\0';++i);
		l2=i;
	char a[100],b[100];
	gets(a);
	gets(b);
	if(l1==l2)
	for(i=0;a[i] != '\0';++i)
		if(a[i] != b[i])
			flag = 0;
	else
	flag = 0;
	if(flag)
	printf("The strings are same");
	else
	printf("The strings are not the same");	

}