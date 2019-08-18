local ffi = require("ffi")
ffi.cdef[[
int addc(int a, int b);
int increment(int c);
int G;
]]
print(ffi.os)
print(ffi.C.addc(1, 2))
print(ffi.C.increment(5))
print(ffi.C.increment(10))
print(ffi.C.G)
ffi.C.G = 1
print(ffi.C.increment(5))
