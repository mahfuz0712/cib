#include <stdio.h>
#include <string.h>
#include "cib.h"
// includes ends here

void lekho(char str[], ...) {
    printf(str);
}


float jogKoro(float a, float b) {
    return a+b;
}


float biyogKoro(float a, float b) {
    return a-b;
}


float borgoKoro(float a) {    
    if (a < 0) {
        printf("Error: Cannot calculate square root of a negative number.\n");
        return -1; // Indicating an error
    }
    return a*a;
}


float ghonoKoro(float a) {
    return a*a*a;
}

float ghatKoro(float a, float b) {
    int res = 1;
    for (int i = 1; i <= b; i++) {
        res = res * a;
    }
    return res;
}

float bhagKoro(float a, float b) {
    if (b == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return -1; // Indicating an error
    }
    return a / b;
}
float modKoro(float a, float b) {
    if (b == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return -1; // Indicating an error
    }
    return (int)a % (int)b;
}
float sheshKoro(float a, float b) {
    if (b == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return -1; // Indicating an error
    }
    return (int)a % (int)b;
}








