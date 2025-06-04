#include "moonbit.h"
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

moonbit_bytes_t moonbit_getenv(const char* name) {
    const char* value = getenv(name);
    if (NULL == value) {
        moonbit_bytes_t bytes = moonbit_make_bytes(0, 0);
        return bytes;
    }
    size_t len = strlen(value);
    moonbit_bytes_t bytes = moonbit_make_bytes(len, 0);
    memcpy(bytes, value, len);
    return bytes;
}