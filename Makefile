run: run.c
	gcc -I/usr/include/luajit-2.1 $^ -lluajit-5.1 -rdynamic -o $@

dt: dt.c
	gcc $^ -lduktape -lm -o $@

%.r: %.lua
	./run $^
