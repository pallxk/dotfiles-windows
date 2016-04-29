@echo off
SETLOCAL

@REM Show who is logged on via RDP.


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
)

%exec% %1 netstat | findstr :3389
