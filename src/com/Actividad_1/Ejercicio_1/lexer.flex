package com.Actividad_1.Ejercicio_1;
import static com.Actividad_1.Ejercicio_1.Tokens.*;

%%
%class Lexer
%type Tokens
LETRAS=[a-zA-Z_]
DIGITO=[0-9]
IDENTIFICADOR={LETRAS}+({DIGITO}|{LETRAS})+({DIGITO}|{LETRAS})

%{
    public String lexeme;
%}

%%

{IDENTIFICADOR} {lexeme=yytext(); return Tokens.IDENTIFIER; }