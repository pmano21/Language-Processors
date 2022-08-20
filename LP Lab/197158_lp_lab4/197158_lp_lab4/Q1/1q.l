%{
#include<stdio.h>
int num = 0;
%}

%%

"one"  { num = num + 1 ;}
"two"  { num = num + 2 ;}
"three"  {num = num + 3 ;}
"four"  { num = num + 4 ;}
"five"  { num = num + 5 ;}
"six"  {num = num + 6 ;}
"seven"  {num = num + 7 ;}
"eight"  {num = num + 8 ;}
"nine"  { num = num + 9; }
"ten"  { num = num + 10; }
"eleven" {num = num + 11; }
"twelve" { num = num + 12; }
"thirteen" {num = num + 13; }
"fourteen" {num = num + 14; }
"fifteen" {num = num + 15; }
"sixteen" {num = num + 16; }
"seventeen" {num = num + 17; }
"eighteen" { num = num + 18; }
"nineteen" {num = num + 19; }
"twenty" { num = num + 20; }
"thirty" { num = num + 30; }
"fourty" { num = num + 40; }
"fifty" { num = num + 50; }
"sixty" {num = num + 60; }
"seventy" {num = num + 70; }
"eighty" {num = num + 80; }
"ninety" {num = num + 90; }
"hundred" { num = num * 100 ;}

[\n]  {
        printf("The number is %d" , num );
        num = 0;
        printf("\n");
        printf("Enter the amount in words with spaces :  ");
      }
.    {;}


%%

int main(){

    printf("Enter the amount in words with spaces :  ");
    yylex();
}