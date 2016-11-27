::Arcivo .bat para correr lexer.flex
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
java  -Xmx128m -jar lib/jflex-1.6.1.jar src/lexer.flex 
