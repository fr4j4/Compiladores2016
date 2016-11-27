::Arcivo .bat para correr parser.cup
::Compiladores 2016 - fgonzlez,  ahidalgo, robulloa.
@echo off
java  -Xmx128m -jar ../lib/java-cup-11b.jar -expect 10 parser.cup