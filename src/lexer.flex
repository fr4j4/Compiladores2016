//---- PRIMERA SECCION 'Usercode' ----
import java_cup.runtime.*;
//import java.io.Reader;


%%
//---- SEGUNDA SECCION 'Opciones y declaraciones'----
%class Lexer //nombre de la clase a generar
%unicode //soporte con caracteres unicode
%line //usar un contador de linea que se esta analizando (variable yyline)
%column //usar un contador de columna que se este analizando (yycolumn)
%cup // integrar CUP

//print de ejemplo
%{
	public static void imprime(){
		System.out.println("Hola");
	}
%}

%%
// ---- TERCERA SECCION 'Reglas Lexicas' ----
<YYINITIAL>"inicio" {System.out.println("Palabra Inicio");}