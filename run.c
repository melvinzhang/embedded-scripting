#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

int G = 0;

int increment(int c) {
    G += c;
    return G;
}

int addc(int a, int b) {
    return a+b;
}

int main(int argc, char **argv) {
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    int status = luaL_dofile(L, argv[1]);
    if (status) {
        fprintf(stderr, "Error: %s\n", lua_tostring(L, -1));
        return 1;
    }
    lua_close(L);
    return 0;
}
