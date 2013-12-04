@echo off

if "%1" == "" (
	goto :HELP
)

if "%2" == "" (
	goto :HELP
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

set file=C:\cmd_ex\%~1.cmd

echo @echo off > %file%
echo if "%%1"=="-h" ( goto :HELP ) >> %file%
echo if "%%1"=="/h" ( goto :HELP ) >> %file%
echo if "%%1"=="/?" ( goto :HELP ) >> %file%

echo %~2 %%1 %%2 %%3 %%4 %%5 %%6 %%7 %%8 %%9 >> %file%
echo goto :EXIT >> %file%

echo :HELP >> %file%
echo echo %~1 alias for "%~2" >> %file%
echo :EXIT >> %file% 

goto :EXIT

:HELP
echo.
echo 	alias: creates an alias cmd
echo ----------------------------------------------
echo	alias [name] ["command"]
echo		Must give both a name and a command
echo		for a command with spaces wrap with double quotes
echo.

:EXIT
