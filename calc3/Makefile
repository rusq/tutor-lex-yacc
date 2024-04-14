SHELL=/bin/sh

# using bison instead of yacc.
YACC=bison
# -d generates the header file, -b tells bison to use the y prefix,
# i.e. y.tab.h for compatibility with yacc.
YFLAGS=-d -b y

calc: interp.c lex.yy.c calc.c

lex.yy.c: calc.l
	$(LEX) $^

calc.c: calc.y

clean:
	-rm {calc,y}.tab.[ch] lex.yy.c calc.c *.o calc
