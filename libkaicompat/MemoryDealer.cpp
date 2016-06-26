#include <hardware/hardware.h>

extern "C" void _ZN7android12MemoryDealerC2EjPKcj(void* obj, size_t size, const char* name, uint32_t flags);
extern "C" void _ZN7android12MemoryDealerC1EjPKc(void* obj, size_t size, const char* name) {
    _ZN7android12MemoryDealerC2EjPKcj(obj, size, name, 0);
}
