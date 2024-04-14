%{
#include <stdlib.h>
#include "calc3.h"
#include "y.tab.h"
void yyerror(char*);
%}

%%

		/* variables */
[a-z]		{
			yylval.sIndex = *yytext - 'a';
			return VARIABLE;
		}

		/* integers */
0		{
			yylval.iValue = atoi(yytext);
			return INTEGER;
		}	
[1-9][0-9]*	{
			yylval.iValue = atoi(yytext);
			return INTEGER;
		}
		
		/* operators */
[-()<>=+*/;{}.]		return *yytext;

">="			return GE;
"<="			return LE;
"=="			return EQ;
"!="			return NE;
"while"			return WHILE;
"if"			return IF;
"else"			return ELSE;
"print"			return PRINT;

[ \t\n]+	; 			/* skipping whitespace */

.		yyerror("Unknown character");

%%

int yywrap(void) {
	return 1;
}
