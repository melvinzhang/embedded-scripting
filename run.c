#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

int addc(int a, int b) {
    return a+b;
}

int main(int argc, char **argv)
{
    lua_State *L = lua_open();
    luaL_openlibs(L);
    luaL_dofile(L, argv[1]);
    lua_close(L);
    return 0;
}
