#!/bin/bashc
#An script bash to compile a C file, run it, and delete the file.out
c=".c"
out=".out"
read -p  "C File to compile: " file
gcc $file$c -o $file$out
./$file$out
rm $file$out
