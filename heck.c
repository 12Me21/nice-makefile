#include <stdio.h>
#include "types.h"

void heck(Str arg) {
    Str pos = arg;
    while (pos = strstr(pos, "hell"))
        memcpy(pos, "heck", 4);
    printf("%s\n", arg);
}
