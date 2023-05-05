#include <stdio.h> 

int yyparse();
	
int main () {
   printf("Boolean Calculator\n\n");

   yyparse();

   return 0;
}

