# Poradnik GCC dla C++

Ten poradnik pomoże Ci używać kompilatora **GCC** (GNU Compiler Collection) do kompilowania programów C++ w systemach Linux, Windows (MinGW) i macOS.

---

## 1. Instalacja

### Linux (Ubuntu / Debian)
```sh
sudo apt update
sudo apt install build-essential gdb
```
- `build-essential` zawiera `gcc`, `g++`, `make` i podstawowe narzędzia.
- `gdb` do debugowania.

### macOS
```sh
brew install gcc
```
- Upewnij się, że używasz `g++-<wersja>` (np. `g++-13`).

### Windows
- Pobierz i zainstaluj MinGW lub MSYS2.
- Dodaj ścieżkę do `bin` w zmiennej środowiskowej PATH.
---

## 2. Kompilowanie programu C++

### Podstawowa komenda
```sh
g++ main.cpp -o main
```
- `main.cpp` – plik źródłowy  
- `-o main` – nazwa pliku wykonywalnego  

### Kompilacja wielu plików
```sh
g++ main.cpp vector.cpp node.cpp -o program
```

### Kompilacja z włączonymi ostrzeżeniami
```sh
g++ -Wall -Wextra -Wpedantic main.cpp -o main
```
- `-Wall` – włącza większość ostrzeżeń  
- `-Wextra` – dodatkowe ostrzeżenia  
- `-Wpedantic` – zgodność z ISO C++  

---

## 3. Opcje kompilatora

- `-std=c++17` lub `-std=c++20` – wybór standardu C++  
- `-g` – dodaje informacje debugowania (do GDB)  
- `-O1`, `-O2`, `-O3` – optymalizacja kodu  
- `-fsanitize=address` – wykrywa wycieki pamięci i dangling pointer (AddressSanitizer)  
- `-fsanitize=undefined` – wykrywa błędy typu undefined behavior  

### Przykład:
```sh
g++ -std=c++20 -Wall -Wextra -g -fsanitize=address main.cpp vector.cpp -o program
```

---

## 4. Uruchamianie programu
```sh
./main       # Linux/macOS
main.exe     # Windows
```

---

## 5. Debugowanie z GDB

### Uruchomienie programu w debuggerze
```sh
gdb ./main
```
### Podstawowe komendy GDB
- `run` – uruchom program  
- `break <linia/funkcja>` – ustaw punkt przerwania  
- `next` – wykonaj następną linijkę (bez wchodzenia do funkcji)  
- `step` – wykonaj następną linijkę (wchodzi do funkcji)  
- `print <zmienna>` – wyświetl wartość zmiennej  
- `continue` – kontynuuj działanie programu do następnego breakpointa  
- `quit` – wyjdź z debuggera  

---

## 6. Analiza pamięci i wycieków

### AddressSanitizer
```sh
g++ -g -fsanitize=address main.cpp -o main
./main
```
- Pokazuje wycieki pamięci, podwójne zwolnienia i dangling pointers.

### Valgrind (Linux)
```sh
valgrind --leak-check=full ./main
```
- Szczegółowy raport o wyciekach pamięci.

---

## 7. Tworzenie Makefile (opcjonalnie)

Przykładowy Makefile dla Twojego projektu:
```sh
CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -g -fsanitize=address

SRC = main.cpp vector.cpp node.cpp
OBJ = $(SRC:.cpp=.o)
EXEC = program

all: $(EXEC)

$(EXEC): $(OBJ)
    $(CXX) $(CXXFLAGS) -o $@ $^

clean:
    rm -f $(OBJ) $(EXEC)
```

- `make` – kompiluje projekt  
- `make clean` – usuwa pliki obiektów i program  

---

## 8. Wskazówki praktyczne
1. Zawsze kompiluj z `-Wall -Wextra` – wczesne ostrzeżenia ratują przed bugami.  
2. Do debugowania używaj `-g` i GDB.  
3. Testuj pamięć z `-fsanitize=address` lub Valgrind.  
4. Używaj Makefile przy większych projektach.  
5. Eksperymentuj z różnymi standardami C++ (`-std=c++17`, `-std=c++20`).  

---

💡 **Efekt:**  
Po zapoznaniu się z tym poradnikiem będziesz w stanie:  
- kompilować programy w C++ z GCC,  
- włączać ostrzeżenia i debugowanie,  
- wykrywać wycieki pamięci i błędy runtime,  
- używać Makefile do wygodnej kompilacji większych projektów.  
