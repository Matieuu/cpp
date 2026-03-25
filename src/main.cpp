#include "IntLinkedList.hpp"
#include <iostream>

/*
 * breadboard computing - tworzenie komputera, języka programowania i os
 * drumyr - praktyczne wykorzystanie
 * qubit - komputer kwantowy
 * solvro - app dev
 * studenckie studio deweloperskie - game dev
 * sisk - jak zarobić ale się nie narobić
 * tk games - game dev
 * traf-barak - praktyczne wykorzystanie
 * wms_dev - web dev
 */

int main() {
    IntLinkedList *list = new IntLinkedList(16);

    for (int i = 5; i < 10; i++) {
        list->setNext(i * i);
        list = list->getNext();
    }
    list = list->getFirst();
    for (int i = 3; i > 0; i--) {
        list->setPrev(i * i);
        list = list->getPrev();
    }

    list = list->getFirst();
    std::cout << "Pierwszy element: " << list->getValue() << std::endl;

    list = list->getLast();
    std::cout << "Ostatni element: " << list->getValue() << std::endl
              << std::endl;

    list = list->getPrev()->getPrev()->getPrev()->getPrev();
    while (list->hasNext()) {
        std::cout << "Następny element: " << list->getValue() << std::endl;
        list = list->getNext();
        list->rmPrev();
    }

    std::cout << std::endl;
    while (list->hasPrev()) {
        list = list->getPrev();
        std::cout << "Poprzedni element: " << list->getValue() << std::endl;
        list->rmNext();
    }

    std::cout << "\nJedyny element: " << list->getValue()
              << "\nMa poprzedni element? " << list->hasPrev()
              << "\nMa następny element? " << list->hasNext() << std::endl
              << std::endl;

    list->setNext((list->getValue() + 1) * list->getValue());
    list->setPrev((list->getValue() - 1) * list->getValue());
    list = list->getFirst();

    do {
        std::cout << "Jeden z trzech elementów: " << list->getValue() << std::endl;

        if (!list->hasNext())
            break;

        list = list->getNext();
    } while (true);

    list->clear();
}
