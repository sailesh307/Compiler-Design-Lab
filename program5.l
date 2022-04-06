/* Design a LEX Code to count and print the number of total characters, words, white spaces in given ‘Input.txt’ file. */

%{
    int ch = 0, words = 0, spaces = 0;
%}

%%
\n ch++;
[^ \n\t]+ {words++; ch = ch + yyleng;}
[ ] {spaces++; ch++;}
. ch++;
%%

int yywrap(){}

int main(){
    yyin = fopen("input.txt", "r");

    yylex();

    printf("characters : %d\n", ch);
    printf("words : %d\n", words);
    printf("spaces : %d\n", spaces);
}

/* 
Rule1 : \n is a character
Rule2 : all except space, tab, newline is a word
        yyleng -> length of the word (i.e length of current token)
Rule3 : count space and it is also a character
Rule4 : all other characters are counted as characters
*/