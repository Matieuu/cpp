#include <iostream>

int main() {
    int *len = new int(5);
    int *arr = new int[*len];
    int *start = arr;

    for (int i = 0; i < *len; i++) {
        *arr = i;
        arr++;
    }
    arr = start;

    for (int i = 0; i < *len; i++) {
        std::cout << i + 1 << ". Wartość: " << *arr << std::endl;
        arr++;
    }

    delete len;
    delete[] start;
}
