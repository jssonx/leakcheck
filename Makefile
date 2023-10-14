# 定义编译器
CC=gcc

# 定义编译选项
CFLAGS=-g

# 源文件
SOURCES=src/mld.c src/app.c

EXECUTABLE=exe

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXECUTABLE)

run: all
	./$(EXECUTABLE)

clean:
	rm -f $(EXECUTABLE)

.PHONY: all run clean
