::Arcivo .bat para correr lexer.flex
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
::cd ..
cd src
java  -Xmx128m -jar ../lib/jflex-1.6.1.jar lexer.flex 
cd ..