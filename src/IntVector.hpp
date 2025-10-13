#include <cstddef>
#pragma once

class IntVector {
  private:
    int *data;
    std::size_t sz;
    std::size_t cap;

  public:
    IntVector() : data(nullptr), sz(0), cap(0) {};
    void push_back(int value);
    int pop_back();
    std::size_t size() const { return sz; }
    ~IntVector() { delete[] data; }
};
