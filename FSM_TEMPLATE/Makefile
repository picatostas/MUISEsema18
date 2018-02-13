CC = gcc
CFLAGS = -Wall

OBJS = main.o fsm.o
HDRS = fsm.h
# add if timed events are used 
RT = -lrt
# Executable
EXE = Executable

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS) #$(RT)

$(OBJS): $(HDRS)


wiringPi.o: wiringPi.c
	$(CC) $(CFLAGS) -c wiringPi.c

fsm.o: fsm.c
	$(CC) $(CFLAGS) -c fsm.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f $(OBJS) $(EXE) *.bak *~
