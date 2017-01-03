@echo off
SETLOCAL EnableDelayedExpansion

@REM Show who is logged on via RDP.
@REM
@REM Usage:
@REM   rdpwho [hostname]
@REM   rdpwho [\\hostname]


REM Running against localhost by default
SET exec=
SET host=

IF "%1" NEQ "" (
	REM Running against remote host

	REM Check dependency: psexec
	where psexec >nul 2>nul || (
		echo Not installed required dependency: psexec
		echo See https://technet.microsoft.com/en-us/sysinternals/bb842062
		echo Exiting
		exit /b 1
	)

	SET exec=psexec -accepteula -nobanner

	REM Prepend "\\" if not provided
	SET host=%1
	IF "!host:~0,2!" NEQ "\\" (
		SET host=\\!host!
	)
)

REM Remote Desktop Services uses port 3389 (ms-wbt-server)
REM Use `-n` for `netstat` to avoid DNS lookup
REM `:3389.*:` ensures only port number in 'Local Address' part is matched against
%exec% %host% netstat -n | findstr /R :3389.*:
