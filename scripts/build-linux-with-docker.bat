@echo off

REM Don't export variables
setlocal

REM Script directory
SET SCRIPT_DIR=%~dp0

REM Project directory
PUSHD .
CD "%SCRIPT_DIR%\.."
SET PROJECT_DIR=%CD%
POPD

REM Check command line arguments
IF "%~1"=="" GOTO usage
GOTO main

:usage
ECHO Usage: %~nx0 ^<ARCH^>
ECHO.
ECHO Arguments:
ECHO        ARCH: x86, x64
GOTO :EOF

:main
REM Architecture
SET ARCH=%~1

REM Dockerfile folder
SET DOCKERFILE=linux-%ARCH%

REM Build Docker image
docker build -t connect/build-%DOCKERFILE% "%PROJECT_DIR%\docker\%DOCKERFILE%"

REM Run and build with Docker
docker run -it --rm -v "%PROJECT_DIR%:/project" connect/build-%DOCKERFILE% /project/scripts/build-linux "%ARCH%"
