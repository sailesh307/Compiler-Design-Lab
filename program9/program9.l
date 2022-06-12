/* Design a DFA in LEX Code which accepts string containing even number of a and even number of b over input alphabet {a, b}. */


%{

%}

%s A B C DEAD
%%
<INITIAL>\n printf("Accepted\n"); BEGIN INITIAL;

<INITIAL>a BEGIN A;
<INITIAL>b BEGIN C;
<INITIAL>[^ab\n] BEGIN DEAD;

<A>a BEGIN INITIAL;
<A>b BEGIN B;
<A>[^ab\n] BEGIN DEAD;
<A>\n printf("Rejected\n"); BEGIN INITIAL;

<B>a BEGIN C;
<B>b BEGIN A;
<B>[^ab\n] BEGIN DEAD;
<B>\n printf("Rejected\n"); BEGIN INITIAL;

<C>a BEGIN B;
<C>b BEGIN INITIAL;
<C>[^ab\n] BEGIN DEAD;
<C>\n printf("Rejected\n"); BEGIN INITIAL;


<DEAD>. BEGIN DEAD;
<DEAD>\n printf("Rejected\n"); BEGIN INITIAL;

%%


int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}