#include <stdio.h>

int main(void)
{
    FILE *fp;
	char ch;
  
	printf("my file is:");
	if((fp = fopen("hello.txt","r")) == NULL) {
		printf("fail to read");
	} else {
		while (!feof(fp)) {
			ch = fgetc(fp);
			if (ch != EOF) {
				printf("%c", ch);
			}
		}
	}
	printf("name");
	fclose(fp);
	printf("\n");
  return 0;
}
