#include "es3A.h"

char piufreq(const char* s) {
    unsigned    max   = 0;
    char        max_c = *s;
    const char* p     = s;

    while (*p) {
        if (conta(*p, s) > max) {
            max_c = *p;
            max   = conta(*p, s);
        }
        p++;
    }

    return max_c;
}
