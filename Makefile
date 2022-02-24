# executable name
output := a.out
# source files
srcdir := example-src
srcs := heck.c main.c

# compiler flags
CFLAGS += -Wall -Wextra -Os -g
# linker flags
#LDFLAGS+= -lX11 -llua5.3
pkgs := x11 lua5.3

######################################################################

include .Nice.mk
