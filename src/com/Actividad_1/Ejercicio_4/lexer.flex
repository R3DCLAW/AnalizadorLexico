package com.Actividad_1.Ejercicio_4;
import static com.Actividad_1.Ejercicio_4.Tokens.*;

%%
%class Lexer
%type Tokens
int=[Ii][Nn][Tt][Ee][Gg][Ee][Rr]
char=[C|c][H|h][A|a][R|r]
real=[R|r][E|e][A|a][L|l]
espacio=[ ,\t, \r, \n]+

%{
    public String lexeme;
%}
%%

while {lexeme = yytext(); return Tokens;}

//{espacio} {/*Ignore*/}
[INTEGER] {return Integer;}
[CHAR] {return Char;}
[REAL] {return Real;}
{char} {lexeme = yytext(); return Char;}
{int} {lexeme = yytext(); return Integer;}
{real} {lexeme = yytext(); return Real;}