@echo off
pushd %~dp0\packages

REM Loop through packages listed in various lists.
for %%i in (*.txt) do (
	echo Upgrading packages in %%i ...
	for /f %%j in (%%i) do (
		echo Upgrading package %%j
		REM Auto confirm all prompts to achieve unattended operation.
		choco upgrade -y %%j
	)
)

popd
