# executable name (remember to update .gitignore if you change it)
output:= a.out
# source files (without .c extension)
srcs:= heck main

# compiler flags
CFLAGS?= -Wall -Wextra -Os -g
# libs to include when linking (passed as -l<name> flags)
#libs:= X11 lua5.3

# location for intermediate files (.o and .mk)
# (will be created automatically, as well as any subdirectories)
# (ex: src `subdir/file` will create `.junk/subdir/` and compile `subdir/file.c` to `.junk/subdir/file.o`)
junkdir:= .junk
# (remember to update .gitignore if changed)

######################################################################

# print status nicely (assumes ansi-compatible terminal)
cc= @echo '[33m'$@'	[37mfrom: [32m'$^'[m' ; $(CC)

# Link
$(output): $(srcs:%=$(junkdir)/%.o)
	$(cc) $(CFLAGS) $(addprefix -l,$(libs)) $^ -o $@

# this uses a feature of gcc, which parses a C file
# and outputs a list of headers it depends on
$(junkdir)/%.mk: %.c
	$(cc) $(CFLAGS) -MF$@ -MG -MM -MP -MT$@ -MT$(<:%.c=$(junkdir)/%.o) $<

# Compile
$(junkdir)/%.o: %.c
	$(cc) $(CFLAGS) -c $< -o $@

# Normally, Make will try to generate nonexistent included files (in this case, with our $(junkdir)/%.mk rule
# But for some reason, include fails if the file is in a nonexistent directory.
# This is the only solution I can think of:
$(shell mkdir -p $(addprefix $(junkdir)/,$(dir $(srcs))))
# PROBLEM: this would include files even if `clean` is being run,
# causing it to generate dependency files.
include $(srcs:%=$(junkdir)/%.mk)
