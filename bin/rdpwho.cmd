@echo off
SETLOCAL EnableDelayedExpansion

@REM Show who is logged on via RDP.
@REM
@REM Usage:
@REM   rdpwho [hostname]
@REM   rdpwho [\\hostname]


IF "%1" EQU "" (
	REM Running against localhost
	SET exec=
) ELSE (
	REM Running against remote host

	REM Check dependency: psexec
	where psexec >nul 2>nul || (
		echo Not installed required dependency: psexec
		echo See https://technet.microsoft.com/en-us/sysinternals/bb842062
		echo Exiting
		exit /b 1
	)

	SET exec=psexec

	REM Prepend "\\" if not provided
	SET host=%1
	IF "!host:~0,2!" NEQ "\\" (
		SET host=\\!host!
	)
)

%exec% %host% netstat | findstr :3389
