# executable name
output:= a.out
# source files (without .c extension)
srcs:= heck main

# compiler flags
CFLAGS+= -Wall -Wextra -Os -g
# linker flags
#LDFLAGS+= -lX11 -llua5.3
# shortcut for -l arguments:
libs:= X11 lua5.3

#(haven't tested this!)
#srcdir:= src

#this will put the files in .junk/whatever
#junkdir:= whatever

######################################################################

include .Nice.mk
