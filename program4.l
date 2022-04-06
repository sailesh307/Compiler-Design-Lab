%{

%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned  {ECHO; printf(" KEYWORD\n");}
[{}();,] {ECHO; printf(" SEPRATOR\n");}
[+-/*%<=] {ECHO; printf(" OPERATOR\n");}
[a-zA-Z_][a-zA-Z0-9]* {ECHO; printf(" IDENTIFIER\n");}
. ;
%%

int yywrap(){}

int main(){
    yylex();
}