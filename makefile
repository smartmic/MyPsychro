VERSION=0.1.0
CFLAGS=-c -Wall -DVERSION=\"$(VERSION)\"
GNUSTEPFLAGS=`gnustep-config --objc-flags` `gnustep-config --objc-libs`
FRAMEWORKS= -framework Foundation
LDFLAGS=-lobjc -lm -lgnustep-base
OBJ = main.o MyPsychro.o Bridge.o Display.o psychrometrics.o
NAME = mypsychro

all : $(OBJ)
ifeq ($(TARGET),linux)
	gcc -O2 -o $(NAME) $(OBJ) $(LDFLAGS)
else
	clang -O2 -o $(NAME) -lobj $(FRAMEWORKS)
endif

%.o: %.m 
ifeq ($(TARGET),linux)
		gcc $(GNUSTEPFLAGS) $(CFLAGS) $<
else
		gcc $(CFLAGS) $<
endif

psychrometrics.o : psychrometrics.cpp
	g++ $(CFLAGS) $<

.PHONY: clean
clean :
	rm -f *.o
	rm -f mypsychro
