# Index
S.no | title
--- | --- |
1 | [Ques pdf](./Compiler%20LAB%20MANUAL%202%20(PCS-601).pdf)|
2 | [All Programs](#all-codes)
3 | [Important Table](#important-symbols)

# How to use lex on windows

- download flex [click here](http://gnuwin32.sourceforge.net/downlinks/flex.php)

- now simply install this file
- now go to `C:\Program Files (x86)\GnuWin32\bin` and copy this path.
- add this path to environment variables

# Process of using flex
```
flex programName.l
gcc lex.yy.c
.\a.exe
```

# Syntax
```
%{
    // definition or declaration
%}

%%
    // Rules of lex
%%

    // function
```


useful site : https://www.geeksforgeeks.org/flex-fast-lexical-analyzer-generator/

## Important symbols
symbol | use 
:---: | --- 
[ ]    | one of the symbols in the language
[ ]*   | zero or more of the symbols in the language
[ ]+   | one or more of the symbols in the language
[ ]?   | zero or one of the symbols in the language
[ ]{n} | exactly n of the symbols in the language
[ ]{n,} | n or more of the symbols in the language
[ ]{n,m} | n to m of the symbols in the language
^     | except the symbols in the language (eg : [^a-z] => except lowercase alphabet)


## Important pattern matching table : 

Pattern	| It can match with
--- | --- |
`[0-9]`	| all the digits between 0 and 9
`[0+9]`	| either 0, + or 9
`[0, 9]`	| either 0, ‘, ‘ or 9
`[0 9]`	| either 0, ‘ ‘ or 9
`[-09]`	| either -, 0 or 9
`[-0-9]`	| either – or all digit between 0 and 9
`[0-9]+`	| one or more digit between 0 and 9
`[^a]`	| all the other characters except a
`[^A-Z]`	| all the other characters except the upper case letters
`a{2, 4}`	| either aa, aaa or aaaa
`a{2, }`	| two or more occurrences of a
`a{4}`	| exactly 4 a’s i.e, aaaa
`.`	| any character except newline
`a*`	| 0 or more occurrences of a
`a+`	| 1 or more occurrences of a
`[a-z]`	| all lower case letters
`[a-zA-Z]`	| any alphabetic letter
`w(x\|y)z`	| wxz or wyz

# All Codes

# Without File Handling
## [Program 1](program1.l)

Design  a  LEX  Code  to  count  the  `number  of  lines,  space,  tab-meta  character  and  rest  of characters` in a given Input pattern.


## [Program 2](program2.l)

Design a LEX Code to identify and print `valid Identifier` of C/C++ in given Input pattern.

## [Program 3](program3.l)

Design a LEX Code to identify and print `integer and float value` in given Input pattern.

## [Program 4](program4.l)

Design a LEX Code for `Tokenizing` the following C - fragment.

Identify and print: 
 - OPERATORS
 - SEPERATORS
 - KEYWORDS
 - IDENTIFIERS
```
int p = 1, d = 0, r = 4;
float m = 0.0, n = 200.0;
while(p <= 3) {
    if(d == 0) {
        m = m + n * r + 4.5, d++;
    }
    else {
        r++, m = m + r + 1000.0;
    }
    p++;
}
```

# With File Handling
## [Program 5](program5.l)

Design a LEX Code to count and print the number of total `characters, words, white spaces` in given `Input.txt file`.

## [Program 6](program6.l)

