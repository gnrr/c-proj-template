TARG=test
SRCS=main.c
OBJS=$(SRCS:.c=.o)

CC=gcc

.PHONY: all clean test

all: $(TARG)

$(TARG): $(OBJS)
	$(CC) -o $@ $^

%.o : %.c
	$(CC) -o $@ -c $<

clean:
	rm -f $(TARG) $(OBJS)

