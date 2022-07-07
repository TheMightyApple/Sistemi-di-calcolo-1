#include <stdio.h>
#include "es3A.h"

#define N 500000

unsigned conta(char c, const char* s) {
    unsigned cnt = 0;
    while (*s) if (*s++ == c) cnt++;
    return cnt;
}

int main() {
    unsigned i, checksum = 0;
    for (i=0; i<N; ++i) {
        checksum += piufreq("abbcccddddeeeeeffffffggggggghhhhhhhh");
        checksum += piufreq("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet");
        checksum += piufreq("precipitevolissimevolmente");
    }
    printf("%u [corretto: 118500000]\n", checksum);
    return 0;
}
