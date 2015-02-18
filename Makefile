objects= main.o imie.o

program: $(objects)
	g++ $(objects) -o program

main.o: main.cpp imie.h
	g++ -c main.cpp -o main.o

imie.o: imie.cpp imie.h
	g++ -c imie.cpp -o imie.o

.PHONY: clean

clean:
	rm -f program $(objects)