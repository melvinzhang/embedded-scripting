run: run.c
	gcc -I/usr/include/luajit-2.1 $^ -lluajit-5.1 -o $@

%.r: %.lua
	./run $^
