/* Design a LEX Code to `replace white spaces` of `Input.txt` file by `a single blank` character into 
`Output.txt` file.  */

%{
    
%}

%%
[ ]+  fprintf(yyout, " ");
%%

int yywrap(){}

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");

    yylex();
}


/* 
Rule1 : [ ]+ check for 1 or more spaces 
            -> simply add 1 space to 'output file'

other character will be added by default
*/