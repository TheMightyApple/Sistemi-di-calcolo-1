short lshift8(char);
void replica(const char* s, short* v) {
    while (*s) {
        if (*s < 'a' || *s > 'z')      // 'a' == 97, 'z' == 122
             *v  = '-' + lshift8(*s);  // '-' == 45
        else *v  = *s  + lshift8(*s);
        s++;
        v++;
    }
}
