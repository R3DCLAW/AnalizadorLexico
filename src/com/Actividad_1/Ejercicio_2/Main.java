package com.Actividad_1.Ejercicio_2;

import jflex.exceptions.SilentExit;

import javax.swing.*;
import java.io.StringReader;

public class Main {
    public static void main(String[] args) {
        try {
            String input = JOptionPane.showInputDialog("Introduzca indicador: ");
            StringReader outcome = new StringReader(input);
            Lexer lexer = new Lexer(outcome);
            JOptionPane.showMessageDialog(null, "Expresión Regular= " + lexer.yylex());
        }

        catch (Exception e) {
            System.out.println("LEXICAL ERROR");
        }
    }

    public static void generateAnalyzer(String[] path) {
        try {
            jflex.Main.generate(path);
        }

        catch (SilentExit err) {
            System.out.println("ERROR AL CREAR LEXER");
        }
    }
}