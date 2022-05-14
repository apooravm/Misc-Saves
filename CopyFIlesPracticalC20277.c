#include <stdio.h>

int main()
{
	for (int i = 0; i < 5; i++)
	{
		system(" cp \"test.txt\" \"test%d.txt\"", i);	
		printf("%d\n", i);
	}
	return 0;
}