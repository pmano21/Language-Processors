%{
  #include <stdio.h>
  #include <stdlib.h>
  void yyerror(const char *str) 
  {
   printf("\nReject\n");        
  }
  
%}

%token ZERO ONE

%%

S       : E {printf("Accept\n");} ;
E       : F | ZERO a | ONE b ;
a       : F a | ZERO ;
b       : F b | ONE ;
F       : ZERO | ONE ;

%%
int main()
{
    printf("Enter string: ");
    yyparse();
    printf("\n");
    return 0;
}