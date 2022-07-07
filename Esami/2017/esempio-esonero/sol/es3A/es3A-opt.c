#include "es3A.h"

static unsigned _conta(char c, const char* s) {
    unsigned cnt = 0;
    while (*s) if (*s++ == c) cnt++;
    return cnt;
}

char piufreq(const char* s) {
    unsigned max   = 0;
    char     max_c = *s;

    while (*s) {
        if (_conta(*s, s) > max) {
            max_c = *s;
            max   = _conta(*s, s);
        }
        s++;
    }

    return max_c;
}
