#include <cstddef>
#pragma once

class IntLinkedList {
  private:
    IntLinkedList *next;
    IntLinkedList *prev;
    int value;

  public:
    IntLinkedList(int value) : next(nullptr), prev(nullptr), value(value) {};
    ~IntLinkedList();

    void setNext(int value);
    void setPrev(int value);
    bool hasNext();
    bool hasPrev();
    IntLinkedList *getNext();
    IntLinkedList *getPrev();
    void rmNext();
    void rmPrev();

    IntLinkedList *getFirst();
    IntLinkedList *getLast();

    void setValue(int value);
    int getValue() const { return value; };
};
