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
	clang -O2 -o $(NAME) $(OBJ) -fobjc-arc $(FRAMEWORKS)
endif

%.o: %.m 
ifeq ($(TARGET),linux)
		gcc $(GNUSTEPFLAGS) $(CFLAGS) $<
else
		clang $(CFLAGS) $<
endif

psychrometrics.o : psychrometrics.cpp
ifeq ($(TARGET),linux)
	g++ $(CFLAGS) $<
else
	clang++ $(CFLAGS) $<
endif

.PHONY: test
test :
	expect script.exp > output.txt
	diff test.ok output.txt

.PHONY: clean
clean :
	rm -f *.o
	rm -f mypsychro
