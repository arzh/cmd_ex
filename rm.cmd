@echo off

if "%1"=="-r" (
	goto :RMDIR
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

:STANDARD
if "%1"=="" (
	goto :INVALID_INPUT
) else (
	del %1
)
goto :END_SCRIPT

:RMDIR
if "%2"=="" (
	goto :INVALID_INPUT
) else (
	rmdir %2 /S /Q
)
goto :END_SCRIPT

:INVALID_INPUT
echo.
echo 	ERROR: Invalid or Missing input
echo.
:HELP
echo.
echo 	rm: del/rd alias
echo ----------------------------------------------
echo	rm: normal delete, must specific a file to delete
echo 	rm -r: deletes folder, will delete everything in the folder
echo	     : must specific a folder to delete
echo.

:END_SCRIPT
