run: run.c
	gcc -I/usr/include/luajit-2.1 $^ -lluajit-5.1 -Wl,-E -o $@

%.r: %.lua
	./run $^
