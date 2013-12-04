@echo off 
if "%1"=="-h" ( goto :HELP ) 
if "%1"=="/h" ( goto :HELP ) 
if "%1"=="/?" ( goto :HELP ) 
xcopy %1 %2 %3 %4 %5 %6 %7 %8 %9 
goto :EXIT 
:HELP 
echo xcp alias for "xcopy" 
:EXIT  
