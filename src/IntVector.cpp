#include "IntVector.hpp"
#include <iostream>
#include <stdexcept>

void IntVector::push_back(int value) {
    if (sz == cap) {
        std::size_t newCap = (cap == 0) ? 1 : cap * 2;
        int *newData = new int[newCap];

        for (std::size_t i = 0; i < sz; i++)
            newData[i] = data[i];

        delete[] data;
        data = newData;
        cap = newCap;
    }

    data[sz++] = value;
    std::cout << "size: " << sz << " ; cap: " << cap << std::endl;
}

int IntVector::pop_back() {
    if (sz == 0)
        throw std::out_of_range("Vector is empty");
    std::cout << "size: " << sz << " ; cap: " << cap << std::endl;
    return data[--sz];
}
