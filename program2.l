/* Design a LEX Code to identify and print valid Identifier of C/C++ in given Input pattern. */

%{

%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned    printf("invalid identifier");
[a-zA-Z_][a-zA-Z0-9_]* printf("valid identifier");
.*   printf("invalid identifier");
%%

int yywrap(){}

int main(){
    yylex();
}

/* 
Rule1 : check for keywords
Rule2 : to check for valid identifier
    rules for identifier :
        - 1st char must be a letter or _
        - other chars must be a letter, digit or _
Rule3 : other chars 
*/