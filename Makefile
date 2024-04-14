CFLAGS=-ll
T=lineno
lineno: lineno.c
lineno.c: lineno.l

idcount: idcount.c
idcount.c: idcount.l

wordcount: wordcount.c
wordcount.c: wordcount.l

clean: ; -rm *.c wordcount idcount lineno
