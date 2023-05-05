%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int yylex (void);
void yyerror (char const *);
extern char *yytext;
%}

%define api.value.type {double}

%token VALUE            1
%token AND              2
%token OR               3
%token NOT              4
%token '('
%token ')'

%%

input:  /* empty string */
        | input line
;

line:   '\n'
        | exp '\n'  { printf (">>> %.5g\n", $1); }
;

exp:    VALUE           { $$ = atof(yytext);    }
        | exp AND exp   { $$ = $1 && $3;        }
        | exp OR exp    { $$ = $1 || $3;        }
        | NOT exp       { $$ = ($2 == 0) ? 1 : 0;       }
        | '(' exp ')'   { $$ = $2;      }
        ;

%%
