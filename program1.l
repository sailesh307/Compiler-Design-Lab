/* Design a LEX Code to count the number of lines, space, tab-meta character and rest of characters in a given Input pattern. */
%{
    int line = 0, space = 0, tabs = 0, other = 0;
%}

%%
\n line++;
[ ] space++;
[\t] tabs++;
quit return 0; // when encounter 'quit' stop taking input
. other++;
%%

int yywrap(){}

int main(){
    yylex();
    printf("lines : %d", line);
    printf("\nspace : %d", space);
    printf("\ntabs : %d", tabs);
    printf("\nother : %d", other);
    return 0;
}