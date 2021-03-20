# executable name (remember to update .gitignore if you change it)
output:= a.out
# source files (without .c extension)
srcs:= heck main

# compiler flags
CFLAGS+= -Wall -Wextra -Os -g
# libs to include when linking (passed as -l<name> flags)
libs:= X11 lua5.3

#(haven't tested this!)
#srcdir:= src

#this will put the files in .junk/whatever
#junkdir:= whatever

######################################################################

include .Nice.mk
