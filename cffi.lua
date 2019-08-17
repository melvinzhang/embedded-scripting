local ffi = require("ffi")
ffi.cdef[[
int addc(int a, int b);
]]
print(ffi.os)
print(ffi.C.addc(1, 2))
