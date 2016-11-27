::Arcivo .bat para compilar Lex.java (generado por jflex)
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
cd src
cls
echo "compilando..."
javac -classpath ..\lib\java-cup-11b.jar;..\lib\jflex-1.6.1.jar;. *.java
echo "Listo!"
cd ..