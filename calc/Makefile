SHELL=/bin/sh
YACC=bison
YFLAGS=-d -b y

calc: lex.yy.c calc.c

lex.yy.c: calc.l
	$(LEX) $^

calc.c: calc.y



clean:
	-rm {calc,y}.tab.[ch] lex.yy.c calc.c *.o
