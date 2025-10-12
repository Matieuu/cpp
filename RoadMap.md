# Roadmapa nauki C++ – 7 dni

Celem tej roadmapy jest poznanie możliwości i zagrożeń w C++ poprzez praktyczne ćwiczenia. Zakres uwzględnia dynamiczne struktury danych, wskaźniki, pamięć, szablony i inteligentne wskaźniki.

---

## 🔹 Dzień 1 – Wprowadzenie do wskaźników i referencji

### Cele:
- Zrozumieć różnicę między wskaźnikami a referencjami.
- Poznać podstawowe operacje na wskaźnikach (`*`, `&`).
- Napisać proste programy operujące na wskaźnikach i referencjach.

### Definicje:
- **Wskaźnik (`pointer`)** – zmienna przechowująca adres innej zmiennej.
- **Referencja (`reference`)** – alias dla istniejącej zmiennej.

### Przykład:
```cpp
int a = 10;
int* ptr = &a;    // wskaźnik na a
int& ref = a;     // referencja do a

*ptr = 20;        // zmiana wartości przez wskaźnik
ref = 30;         // zmiana wartości przez referencję
```
### Ćwiczenia:
- [ ] Zadeklaruj wskaźnik na `int` i zmień wartość przez wskaźnik.
- [ ] Zadeklaruj referencję na zmienną i zmodyfikuj jej wartość.
- [ ] Porównaj wskaźniki i referencje w praktycznych przykładach.

---

## 🔹 Dzień 2 – Ręczne zarządzanie pamięcią

### Cele:
- Poznać `new` i `delete`.
- Zrozumieć, czym jest heap i stack.
- Zidentyfikować wycieki pamięci i dangling pointers.

### Definicje:
- **Heap** – pamięć dynamiczna, alokowana w czasie wykonywania programu (`new`/`delete`).  
- **Stack** – pamięć automatyczna dla zmiennych lokalnych, zwalniana po wyjściu z zakresu.

### Przykład:
```cpp
int* x = new int(5);  // alokacja na heap
delete x;             // zwolnienie pamięci
```

### Ćwiczenia:
- [x] Utwórz dynamiczną zmienną `int` i zwolnij ją.
- [x] Utwórz dynamiczną tablicę `int` i zwolnij pamięć.
- [x] Celowo zostaw pamięć niezwolnioną i przetestuj Valgrind / AddressSanitizer.

---

## 🔹 Dzień 3 – Dynamiczna tablica (Vector-like)

### Cele:
- Napisać własną klasę dynamicznej tablicy.
- Implementować metody: `push_back`, `pop_back`, `size`, `capacity`.
- Logować operacje alokacji i dealokacji pamięci.

### Definicje:
- **Dynamiczna tablica** – tablica, która może zmieniać rozmiar w trakcie działania programu.

### Przykład skeleton:
```cpp
class Vector {
    int* data;
    size_t sz;
    size_t cap;
public:
    Vector() : data(nullptr), sz(0), cap(0) {}
    void push_back(int value);
    void pop_back();
    size_t size() const { return sz; }
    ~Vector() { delete[] data; }
};
```

### Ćwiczenia:
- [ ] Stwórz klasę `Vector` dla typu `int`.
- [ ] Dodawaj i usuwaj elementy, testując logi pamięci.
- [ ] Celowo zrób wyciek i podwójne zwolnienie pamięci – sprawdź i popraw.

---

## 🔹 Dzień 4 – Lista jednokierunkowa

### Cele:
- Zrozumieć wskaźniki w strukturach dynamicznych (`Node*`).
- Napisać listę jednokierunkową z operacjami: dodawanie, usuwanie, przeszukiwanie.
- Poznać typowe błędy w C++ (dangling pointer, double free, leak).

### Definicje:
- **Node** – element listy, przechowujący wartość i wskaźnik na następny element.
- **Dangling pointer** – wskaźnik wskazujący na zwolnioną pamięć.
- **Double free** – próba zwolnienia tej samej pamięci dwa razy.
- **Memory leak** – pamięć nie zostaje zwolniona po użyciu.

### Przykład:
```cpp
struct Node {
    int value;
    Node* next;
};
```

### Ćwiczenia:
- [ ] Zaimplementuj własną listę dla `int`.
- [ ] Celowo wprowadź błędy pamięci i napraw je przy użyciu Valgrind / AddressSanitizer.
- [ ] Dodaj wyjątek przy próbie usunięcia elementu, którego nie ma w liście.

---

## 🔹 Dzień 5 – Szablony (Templates)

### Cele:
- Poznać szablony i umożliwić uniwersalność struktur danych.
- Zmienić `Vector` i `Node` na szablony, aby działały dla różnych typów (`int`, `double`, `std::string`).

### Definicje:
- **Template** – pozwala na tworzenie klas i funkcji działających dla różnych typów danych.

### Przykład:
```cpp
template<typename T>
class Vector {
    T* data;
    size_t sz, cap;
public:
    Vector() : data(nullptr), sz(0), cap(0) {}
    void push_back(T value);
    void pop_back();
    ~Vector() { delete[] data; }
};
```

### Ćwiczenia:
- [ ] Przepisz klasę `Vector` jako szablon.
- [ ] Przepisz listę jednokierunkową jako szablon.
- [ ] Testuj różne typy danych w tych strukturach.

---

## 🔹 Dzień 6 – Inteligentne wskaźniki (Smart Pointers)

### Cele:
- Zrozumieć `std::unique_ptr` i `std::shared_ptr`.
- Porównać ręczne zarządzanie pamięcią z inteligentnymi wskaźnikami.
- Zapobiegać błędom pamięci dzięki RAII.

### Definicje:
- **RAII (Resource Acquisition Is Initialization)** – zasób jest alokowany i zwalniany w konstruktorze i destruktorze obiektu.
- **Smart pointer** – wskaźnik zarządzający pamięcią automatycznie.

### Przykład:
```cpp
#include <memory>

std::unique_ptr<int> p1 = std::make_unique<int>(10);
std::shared_ptr<int> p2 = std::make_shared<int>(20);
```

### Ćwiczenia:
- [ ] Zmień klasę `Vector` na użycie `unique_ptr` zamiast `new/delete`.
- [ ] Zaimplementuj listę używając `shared_ptr`.
- [ ] Porównaj błędy pamięci przed i po zastosowaniu smart pointerów.

---

## 🔹 Dzień 7 – Podsumowanie i rozszerzenia (opcjonalne)

### Cele:
- Utrwalić wiedzę o wskaźnikach, pamięci, szablonach i smart pointerach.
- Opcjonalnie: multithreading i prosty pool pamięci.
- Porównać zarządzanie pamięcią w C++ i Rust.

### Definicje:
- **Multithreading** – wykonywanie wielu wątków równocześnie.
- **Pool pamięci** – system zarządzania blokami pamięci w celu uniknięcia wycieków.

### Ćwiczenia:
- [ ] Utwórz 2 wątki dodające elementy do wektora i zabezpiecz mutexem.
- [ ] Zaimplementuj prosty pool pamięci (przechwytywanie wycieków).
- [ ] Sporządź notatki: czego Rust Cię chroni, a w C++ musisz uważać.

---

💡 **Efekt po 7 dniach:**
- Swobodne operowanie wskaźnikami i referencjami.
- Świadomość błędów pamięci i sposobów ich wykrywania.
- Podstawowe struktury danych w C++ (dynamiczna tablica, lista).
- Szablony i smart pointers.
- Podstawy multithreadingu i pool pamięci (opcjonalnie).
