# Makefile

CC := g++
CFLAGS := -Wall -Werror
SOURCES := calculator.cpp compare.cpp
OBJECTS := $(SOURCES:.cpp=.o)
LIBRARY := libcalc.a
EXECUTABLE := calculator

# Target: all (default target)
all: $(LIBRARY) $(EXECUTABLE)

# Target: static library
$(LIBRARY): $(OBJECTS)
	ar rcs $@ $(OBJECTS)

# Target: executable
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

# Rule for building object files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Target: clean
clean:
	rm -rf *.o $(LIBRARY) $(EXECUTABLE)

# Phony target to avoid conflicts with file names
.PHONY: all clean

