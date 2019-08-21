run: run.c
	gcc $^ -lluajit-5.1 -rdynamic -o $@

dt: dt.c
	gcc $^ -lduktape -lm -o $@

%.r: %.lua
	./run $^
