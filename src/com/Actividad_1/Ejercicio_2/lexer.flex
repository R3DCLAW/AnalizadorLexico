package com.Actividad_1.Ejercicio_2;
import static com.Actividad_1.Ejercicio_2.Tokens.*;

%%
%class Lexer
%type Tokens
A1=a{1}[a-z]a{1}
A2=b{1}[a-z]b{1}

%{
    public String lexeme;
%}
%%

{A1}|{A2} {lexeme=yytext(); return Tokens.Verdadero;}