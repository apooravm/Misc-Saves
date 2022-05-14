//Write a C program to report behaviour of Linux Kernel, including kernel version
#include <stdio.h>

int main()
{
	printf("Kernel Version\n");
	system("cat /proc/sys/kernel/osrelease");
	printf("\n");
	printf("CPU info\n");
	system("cat /proc/cpuinfo | awk \"NR==3,NR==4{print}\"");
	return 0;
}
