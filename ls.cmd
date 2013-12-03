@echo off

if "%1"=="" (
	goto :STANDARD_CMD
)

if "%1"=="-l" (
	goto :LL
) 

if "%1"=="-a" (
	goto :ATTRIB
)

if "%1"=="-h" (
	goto :HELP
)
if "%1"=="/h" (
	goto :HELP
)
if "%1"=="/?" (
	goto :HELP
)

:STANDARD_CMD
dir %1 /D /W %2 %3 %4 %5 %6 %7 %8 %9
goto :END_SCRIPT

:LL
ll.cmd %2 %3 %4 %5 %6 %7 %8 %9
goto :END_SCRIPT

:ATTRIB
attrib %2
goto :END_SCRIPT

:HELP
echo. 
echo 	ls: win alias for dir
echo -----------------------------------------------------
echo.
echo 	ls [path]: runs 'dir /D /W'
echo 	ls -l [path]: runs dir normaly
echo 	ls -a [path]: runs attrib for viewing file attributes
echo.

:END_SCRIPT
