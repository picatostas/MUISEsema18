CC = gcc
CFLAGS = -Wall 

OBJS = main.o fsm.o
HDRS = fsm.h

# Executable
EXE = light_control

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS) -lrt

$(OBJS): $(HDRS)


wiringPi.o: wiringPi.c
	$(CC) $(CFLAGS) -c wiringPi.c

fsm.o: fsm.c
	$(CC) $(CFLAGS) -c fsm.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c 

clean:
	rm -f $(OBJS) $(EXE) *.bak *~
