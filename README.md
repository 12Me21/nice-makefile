A makefile (for C projects) that I've used a few times.  
I use **gnu make** and **gcc**, on **linux**  
the concept should work with other platforms, but I haven't tested it and it will need some changes.  

## Features
- automatically determines which c files depend on which headers
- requires almost no manual configuration, just give it a list of source files (and compiler flags etc.)
- all temporary (`.o` etc.) files are placed in a subdirectory
- clean output:
<img src=https://smilebasicsource.com/api/File/raw/4997>

## Bugs
- fear
