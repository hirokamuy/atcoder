CC  = g++

CFLAGS  = -Wall -O2

TARGET  = a

SRCS    = a.cpp

OBJS    = $(SRCS:.cpp=.o)

INCDIR  =

LIBDIR  =

LIBS    =

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LIBDIR) $(LIBS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) $(INCDIR) -c $(SRCS)

.PHONY: all clean run
all: clean $(OBJS) $(TARGET)

clean:
	-rm -f $(OBJS) $(TARGET)

run: $(OBJS) $(TARGET)
	./$(TARGET)
