@echo off
SETLOCAL

@REM Show who is logged on via RDP.

REM Check dependency: psexec
where psexec >nul 2>nul || (
	echo Not installed required dependency: psexec
	echo See https://technet.microsoft.com/en-us/sysinternals/bb842062
	echo Exiting
	GOTO :EOF
)

psexec %1 netstat | findstr :3389
