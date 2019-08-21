# Embedded scripting languages for a C application

## LuaJIT

Language: Lua 5.1

See run.c and lua files

Pro: well established and widely used, fast, good cffi with minimal boilerplate

Con: Need to export functions to use in ffi, large footprint, additional dependency

## Duktape

Language: ECMAScript E5/E5.1

See dt.c

Pro: single source and header file

Con: ECMAScript weirdness, more complicated cffi
