#include <stdio.h>
#include <string.h>

void replica(const char* s, short* v);

int main() {
    int i;
    short v[] = { 0x3F3F, 0x3F3F, 0x3F3F, 0x3F3F, 0x3F3F };
    char *r = (char*)v, *s = "Ganz!";
    replica(s, v);
    printf("\"");
    for (i=0; i<2*strlen(s); i++) printf("%c", r[i]);
    printf("\" [corretto: \"-Gaannzz-!\"]\n");
    return 0;
}
