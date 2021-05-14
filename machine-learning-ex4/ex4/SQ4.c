#include <stdio.h>
void main()
{	int i,j,d;
	d=0;
	char a[100],b[100]c[200];
	gets(a);
	gets(b);
	n1=strlen(a);
	n2=strlen(b);
	if(n1>n2)
	{	j=0;
		for(i=0;i<n1;++i)
		{
			c[i+d] = a[i];
			if(j<n2)
			{
				d=d+1;
				c[d+j]=b[j];
				d=d+1;
				j=j+1;
			}	
		}

	}
	else
	{
		j=0;
		for(i=0;i<n2;++i)
		{
			if(j<n1)
			{
				c[j+d] = a[j];
				j=j+1;
				d=d+1;
			}

			c[d+i]=b[i];	
		}

	}
printf("%s\n",c );	

}