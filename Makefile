CC = gcc
TARGET = animal.exe
OBJECTS = dog.o blackcow.o turtle.o main.o

$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

dog.o: dog.c
	$(CC) -c -o dog.o dog.c

blackcow.o: blackcow.c
	$(CC) -c -o blackcow.o blackcow.c

turtle.o: turtle.c
	$(CC) -c -o turtle.o turtle.c

main.o: main.c
	$(CC) -c -o main.o main.c

.PHONY: clean
clean:
	rm *.o $(TARGET)
