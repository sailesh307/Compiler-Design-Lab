/* Design a LEX Code to identify and print integer and float value in given Input pattern. */

%{

%}

%%
[0-9]+ printf("int value %s", yytext);
[0-9]+[.][0-9]+ printf("float value %s", yytext);
.* printf("invalid value %s", yytext);
%%


int yywrap(){}

int main(){
    yylex();
}

/* 
Rule1 : check for integer
        simply check for 1 or more digit only
Rule2 : check for float value
    rules for float value :
        - 1 or more digit before .
        - then .
        - 1 or more digit after .
Rule3 : other chars are invalid
*/