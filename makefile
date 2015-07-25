VERSION=0.1.0
CFLAGS=-c -Wall -DVERSION=\"$(VERSION)\"
GNUSTEPFLAGS=`gnustep-config --objc-flags` `gnustep-config --objc-libs`
LDFLAGS=-lobjc -lm -lgnustep-base
OBJ = main.o MyPsychro.o Bridge.o Display.o psychrometrics.o

all : $(OBJ)
	gcc -O2 -o mypsychro $(OBJ) $(LDFLAGS)

%.o: %.m 
	gcc $(GNUSTEPFLAGS) $(CFLAGS) $<

psychrometrics.o : psychrometrics.cpp
	g++ $(CFLAGS) $<

.PHONY: clean
clean :
	rm -f *.o
	rm -f mypsychro
