//Not included for Exams
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
	pid_t pid;
	pid=fork();
	printf("Hello World! %u\n",pid);
	pid=fork();
	printf("Hello World! %u\n",pid);
	return 0;
}