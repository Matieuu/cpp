#include "IntLinkedList.hpp"
#include <iostream>
#include <stdexcept>

IntLinkedList::~IntLinkedList() {
    if (this->hasNext())
        delete this->getNext();
    if (this->hasPrev())
        delete this->getPrev();
}

void IntLinkedList::setNext(int value) {
    IntLinkedList *newNext = new IntLinkedList(value);
    if (this->hasNext())
        newNext->next = this->getNext();
    this->next = newNext;
}

void IntLinkedList::setPrev(int value) {
    IntLinkedList *newPrev = new IntLinkedList(value);
    if (this->hasPrev())
        newPrev->prev = this->getPrev();
    this->prev = newPrev;
}

bool IntLinkedList::hasNext() {
    return this->next != nullptr;
}

bool IntLinkedList::hasPrev() {
    return this->prev != nullptr;
}

IntLinkedList *IntLinkedList::getNext() {
    if (!this->hasNext())
        throw std::out_of_range("Next element doesn't exist");
    return this->next;
}

IntLinkedList *IntLinkedList::getPrev() {
    if (!this->hasPrev())
        throw std::out_of_range("Previous element doesn't exist");
    return this->prev;
}

void IntLinkedList::rmNext() {
    IntLinkedList *newNext = this->getNext()->getNext();
    this->next = newNext;
}

void IntLinkedList::rmPrev() {
    IntLinkedList *newPrev = this->getPrev()->getPrev();
    this->prev = newPrev;
}

IntLinkedList *IntLinkedList::getFirst() {
    IntLinkedList *current = this;
    while (current->hasPrev())
        current = current->getPrev();
    return current;
}

IntLinkedList *IntLinkedList::getLast() {
    IntLinkedList *current = this;
    while (current->hasNext())
        current = current->getNext();
    return current;
}

void IntLinkedList::setValue(int newValue) {
    this->value = newValue;
}
