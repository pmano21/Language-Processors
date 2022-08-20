%{

#include <stdio.h>
#include <fcntl.h>

int keywords = 0  ,  identifier = 0  ,  operators = 0;

%}


%%

"int" | "main" |"for" | "while" |"auto" | "break" | "case" | "char" | "const" | "continue" | "default" | "do" | "double" | "else" | "enum" | "extern" | "float" | "for" | "goto" | "if" | "int" | "long" | "register" | "return" | "short" | "signed" | 
"sizeof" | "static" | "struct" | "switch" | "typedef" | "union" | "unsigned" | "void" | "volatile" | "while"   { keywords = keywords+1 ;}


"+" | "-" | "/" | "*" | "%" | "=" | ">" | "<" | "#" | "<<" | "+=" | "-=" | "==" | ">=" | "<=" { operators = operators + 1 ;}


[a-z][a-zA-Z0-9]* { identifier = identifier + 1; }

\n {;}



%%


int main(){

    FILE *yyin;
    yyin = fopen("code.cpp","r");

    yylex();

    printf("Operators Count %d \n" , operators );
    printf("Identifier Count %d \n" , identifier ); 
    printf("keywords Count %d \n" , keywords ); 






}