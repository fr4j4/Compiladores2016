::Arcivo .bat para limpiar la carpeta
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
cls
echo "limpiando residuos"
cd src
del Lexer.jav*
del parser.jav*
del sym.jav*
del *.class
cd ..
echo "limpieza terminada"