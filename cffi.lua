local ffi = require("ffi")

ffi.cdef[[
int addc(int a, int b);
int increment(int c);
int G;
]]

local C = ffi.C

print(ffi.os)
print("addc(1,2)", C.addc(1, 2))
print("increment(5)", C.increment(5))
print("increment(10)", C.increment(10))

print("G", C.G)
C.G = 4/5
print("G=4/5", C.G)

print("increment(5)", C.increment(5))
