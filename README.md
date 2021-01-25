a makefile (for C projects) I've used a few times
## Features
- automatically determines which c files depend on which headers
- requires almost no manual configuration, just give it a list of source files (and compiler flags etc.)
- all temporary (`.o` etc.) files are placed in a subdirectory
- clean output:
![screenshot](https://smilebasicsource.com/api/File/raw/4997)
## Bugs
- no `make clean` (however, keep in mind you can use `make -B` to force remaking everything, and/or delete the files in the junk directory)
