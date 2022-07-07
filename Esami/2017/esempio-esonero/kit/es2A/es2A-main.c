#include <stdio.h>

int weird(char* d);

int main() {
    char* s = "haven";
    printf("%d [corretto: 1]\n", weird(s+0));
    printf("%d [corretto: 1]\n", weird(s+1));
    printf("%d [corretto: 0]\n", weird(s+2));
    printf("%d [corretto: 1]\n", weird(s+3));
    printf("%d [corretto: 0]\n", weird(s+4));
    return 0;
}
