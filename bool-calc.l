%option noyywrap

%%

[0-1] { return 1; }
"AND" { return 2; }
"OR"  { return 3; }
"NOT" { return 4; }
"("   { return '('; }
")"   { return ')'; }
\n { return '\n'; }
.	;

%%

void yyerror () {
   printf (" error\n");
   exit(0);
}
