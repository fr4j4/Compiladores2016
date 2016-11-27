::Arcivo .bat para compilar Lex.java (generado por jflex)
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
cd src
echo "Ejecutando ..."
java -cp ..\lib\java-cup-11b.jar;..\lib\jflex-1.6.1.jar;. Test
cd ..