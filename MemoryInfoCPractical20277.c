#include <stdio.h>

int main(int argc, char const *argv[])
{
	printf("Memory Info\n");
	printf("----------------------\n");
	printf("Total Memory\n");
	system("cat /proc/meminfo | awk \"NR==1{print}\"");
	printf("Free Memory\n");
	system("cat /proc/meminfo | awk \"NR==2{print}\"");
	printf("Used Memory\n");
	system("cat /proc/meminfo | awk '{if(NR==1)a=$2; if(NR==2)b=$2}END {print a-b}'");
	return 0;
}