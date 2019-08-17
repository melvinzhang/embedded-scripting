run:
	gcc -I/usr/include/luajit-2.1 run.c -lluajit-5.1 -o $@

%.r: %.lua
	./run $^
