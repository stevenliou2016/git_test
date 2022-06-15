Program=hello
CC=g++
CFLAGS=
OBJS=main.o hello.o

$(Program): $(OBJS)
	$(CC) $^ -o $@

%.o: %.cpp
	$(CC) -c $(CFLAGS) $^ -o $@

.PHONY: clean
clean: 
	rm $(OBJS) $(Program)
