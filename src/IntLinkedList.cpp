#include "IntLinkedList.hpp"
#include <iostream>
#include <stdexcept>

IntLinkedList::~IntLinkedList() {
    this->next = nullptr;
    this->prev = nullptr;
}

void IntLinkedList::setNext(int value) {
    IntLinkedList *newNext = new IntLinkedList(value);
    if (this->hasNext())
        newNext->next = this->getNext();
    newNext->prev = this;
    this->next = newNext;
}

void IntLinkedList::setPrev(int value) {
    IntLinkedList *newPrev = new IntLinkedList(value);
    if (this->hasPrev())
        newPrev->prev = this->getPrev();
    newPrev->next = this;
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
    if (!this->hasNext())
        throw std::out_of_range("Next element doesn't exist");

    IntLinkedList *toRemove = this->getNext();
    this->next = toRemove->next;

    if (this->next)
        this->next->prev = this;
    delete toRemove;
}

void IntLinkedList::rmPrev() {
    if (!this->hasPrev())
        throw std::out_of_range("Previous element doesn't exist");

    IntLinkedList *toRemove = this->getPrev();
    this->prev = toRemove->prev;

    if (this->prev)
        this->prev->next = this;
    delete toRemove;
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

void IntLinkedList::clear() {
    IntLinkedList *node = this->getFirst();
    while (node) {
        IntLinkedList *nextNode = node->next;
        delete node;
        node = nextNode;
    }
}

void IntLinkedList::setValue(int newValue) {
    this->value = newValue;
}
