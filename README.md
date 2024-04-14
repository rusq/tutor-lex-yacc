# Writing an interpreter and compiler using lex/yacc by Tom Niemann

This seemed like the best tutorial so far.

- [Source][lexyacc]

Contains minimal sufficient Makefiles for lex/bison on MacOS, I struggled to
build this zoo at first, so hopefully someone finds this useful, if finds this
repo at all.

- calc1:  starting version of "calc", that interprets only two operations '+' and '-';
- calc2:  is able to perform multiplication and division;
- calc3:  is an interpreter (run "make calc") and compiler to pseudo-assembly (run "make compile").

This works best if you follow the [tutorial][lexyacc] for better understanding.

lexyacc: https://epaperpress.com/lexandyacc/index.html
