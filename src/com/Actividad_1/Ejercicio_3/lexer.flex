package com.Actividad_1.Ejercicio_3;
import static com.Actividad_1.Ejercicio_3.Tokens.*;

%%
%class Lexer
%type Tokens
A=1{1}0{1}[0-9]{5}

%{
    public String lexeme;
%}
%%

{A} {lexeme=yytext(); return Tokens.Verdadero;}