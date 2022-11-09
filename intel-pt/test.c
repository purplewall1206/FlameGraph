#include <stdio.h>

int main()
{
    int i = 0;
    int sum = 0;
    for (i = 0;i < 10;i++) {
        if (i % 2== 0) {
            sum += 2;
        } else {
            sum += 3;
        }
    }
    return sum;
}