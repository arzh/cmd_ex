@echo off

if "%1"=="" (
	@echo Not enough args
	exit
)

md %1
cd %1
