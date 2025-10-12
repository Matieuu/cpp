#include "../include/Vector.hpp"
#include <iostream>

int main() {
    IntVector *vec = new IntVector();

    for (int i = 0; i < 5; i++)
        vec->push_back(i * i);

    std::size_t size = vec->size();
    for (std::size_t i = 0; i < size; i++) {
        int val = vec->pop_back();
        std::cout << i << ". Liczba: " << val << std::endl;
    }

    delete vec;
}
