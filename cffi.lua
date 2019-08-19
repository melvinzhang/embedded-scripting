local ffi = require("ffi")

ffi.cdef[[
int addc(int a, int b);
int increment(int c);
int G;
]]

local G = ffi.C

print(ffi.os)
print(G.addc(1, 2))
print(G.increment(5))
print(G.increment(10))

print(G.G)
G.G = 4/5
print(G.G)

print(G.increment(5))
