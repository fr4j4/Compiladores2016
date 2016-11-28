//---- [1] PRIMERA SECCION 'Usercode' ----
import java_cup.runtime.*;
import java.io.Reader;

//---- [2] SEGUNDA SECCION 'Opciones y declaraciones'----
%%
%class Lexer //nombre de la clase a generar
%unicode //soporte con caracteres unicode
%line //usar un contador de linea que se esta analizando (variable yyline)
%column //usar un contador de columna que se este analizando (yycolumn)
%cup // integrar CUP

//codigo se uduario

%{   
    /* To create a new java_cup.runtime.Symbol with information about
       the current token, the token will have no value in this
       case. */
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    /* Also creates a new java_cup.runtime.Symbol with information
       about the current token, but this object has a value. */
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

//MACROS (definiciones de final de linea, espacio en blanco, numeros, id, etc)
//enter		= \r|\n
final_linea = \r|\n|\r\n
espacio     = {final_linea} | [ \t\f]
num			= 0|[1-9][0-9]*
id 			= [A-Za-z_][A-Za-z_0-9]*
//oprel       = "<"|">"|"="
//comilla		= "\""
%%
// ---- [3] TERCERA SECCION 'Reglas Lexicas' ----

<YYINITIAL>{
	//simbolos de terminales y variables

    ";"                 {return symbol(sym.PCOMA);                          }
	"="				   	{return symbol(sym.IGUAL); 							}
	"+"                	{return symbol(sym.MAS);   							}
    "-"                	{return symbol(sym.MENOS); 							}
	"*"                	{return symbol(sym.POR);   							}
	"/"                	{return symbol(sym.DIV);   							}
	"("                	{return symbol(sym.LPAREN);							}
    ")"                	{return symbol(sym.RPAREN);							}
    "leer"				{return symbol(sym.LEER);							}
    "escribir"          {return symbol(sym.ESCRIBIR);                       }
    "inicio"            {return symbol(sym.INICIO);                         }
    "fin"               {return symbol(sym.FIN);                            }
    "si"                {return symbol(sym.SI);                             }
    "entonces"          {return symbol(sym.ENTONCES);                       }
    //{oprel}			{return symbol(sym.OPREL);							}
	"<"				   	{return symbol(sym.MENOR); 							}
	">"                	{return symbol(sym.MAYOR);   						}
//   {enter}				{return symbol(sym.ENTER);						}
//    {comilla}			{return symbol(sym.COMILLA);						}
    {espacio}          	{/* NO HACER NADA*/									}
    {num}				{return symbol(sym.CONST, new Integer(yytext()));	}
    {id}                {return symbol(sym.ID, new Integer(1));          	}
}
    [^]                 { throw new Error("Caracter no permitido <"+yytext()+">"); }