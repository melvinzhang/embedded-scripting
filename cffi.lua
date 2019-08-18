local ffi = require("ffi")
ffi.cdef[[
int addc(int a, int b);
int increment(int c);
]]
print(ffi.os)
print(ffi.C.addc(1, 2))
print(ffi.C.increment(5))
print(ffi.C.increment(10))
