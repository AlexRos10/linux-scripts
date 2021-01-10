#!/bin/bashc
c=".c"
out=".out"
read -p  "C File to compile: " file
gcc $file$c -o $file$out
./$file$out
rm $file$out
