%{
#include<stdio.h>
#include"calc.tab.h"
int lineno=1;
%}

sign	[+|-]
digit	[0-9]
ID	[a-z][a-zA-Z0-9]*

%%

"main"	{return TOK_MAIN;}

"("	{return TOK_LRBRACK;}

")"	{return TOK_RRBRACK;}

"{"	{return TOK_LCBRACK;}

"}"	{return TOK_RCBRACK;}

"float"	{return TOK_FLOAT;}

"print" {return TOK_PRINT;}

";"	{return TOK_SEMICOLON;}

"-"	{return TOK_SUB;}

"*"	{return TOK_MUL;}

"="	{return TOK_EQUALS;}

[0-9]+.[0-9]+	{sscanf(yytext,"%f",&(yylval.float_val));
			return TOK_NUM;}

{ID}+	{sscanf(yytext,"%s",&(yylval.id));
	return TOK_ID;}

[ \n]	{++lineno;  }

[ \t]	{ }

.	{
	printf("Lexical analysis Error  \n");
	}

%%
