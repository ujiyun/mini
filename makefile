CC = gcc
CFLAGS = -c
OBJS = manager.o product.o market.o

market: $(OBJS)
	$(CC) $(OBJS) -o market

manager.o: manager.c
	$(CC) $(CFLAGS) manager.c -o manager.o

product.o: product.c
	$(CC) $(CFLAGS) product.c -o product.o

market.o: market.c
	$(CC) $(CFLAGS) market.c -o market.o

clean:
	rm -rf *.o market

