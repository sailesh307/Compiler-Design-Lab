/* Design a LEX Code to `remove the comments` from any `C-Program` given at run-time and store into `out.c` file */

%{

%}

%%
"//".*  ;
"/*"([/*]|[^*/]|[\n]|[*])*"*/" ;
%%

int yywrap(){}

int main(){
    char input_file[50];
    printf("Enter input file (eg : sample.c): ");
    scanf("%s", input_file);

    yyin = fopen(input_file, "r");
    yyout = fopen("out.c", "w");

    yylex();
}

/*
Rule 1: check for single line comment
            -> starts with //
            -> and any char after //
        -> simply ignore

Rule 2: check for multiline comment
            -> starts with /*
            -> anything after this
            -> end with * /
        -> simply ignore 


other character will print as it is
*/
