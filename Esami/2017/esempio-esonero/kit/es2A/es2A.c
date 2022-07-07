void init(char*, char*, char*);

int weird(char* d) {
    unsigned char a, b, c;
    init(&a, &b, &c);
    return a + *d < 2*c - b;
}
