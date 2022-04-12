%{

%}

%%
"<!--"[^>]*"-->" ;
"<"[^>]*">" ECHO;
. ;
%%

int yywrap(){}

int main(){
    char in_file[50], out_file[50];

    printf("Enter input file name (eg: sample.html) : ");
	scanf("%s", in_file);
    printf("Enter output file name (eg: output.txt) : ");
	scanf("%s", out_file);

    yyin = fopen(in_file, "r");
    yyout = fopen(out_file, "w");

    yylex();
}


/* 
Rule 1: check for comments
        -> ignore it
Rule 2: check for html tag
        -> starts with <  and end with >
        -> and anything except > between them
       -> print to output file.
Rule 3: check for other tokens
       -> do nothing
 */