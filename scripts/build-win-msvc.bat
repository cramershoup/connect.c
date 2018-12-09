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
IF "%~2"=="" GOTO usage
GOTO main

:usage
ECHO Usage: %~nx0 ^<ARCH^> ^<CONFIG^>
ECHO.
ECHO Arguments:
ECHO        ARCH: x86, x64
ECHO      CONFIG: Debug, Release, MinSizeRel, RelWithDebInfo
GOTO :EOF

:main
REM Architecture
SET ARCH=%~1

REM Configuration
SET CONFIG=%~2

REM Triplet
SET TRIPLET=windows-%ARCH%

REM Push current directory
PUSHD .

REM Create build directories
CD "%PROJECT_DIR%"
IF NOT EXIST build MKDIR build
CD build
IF NOT EXIST %TRIPLET% MKDIR %TRIPLET%

REM Navigate to build directory
CD %TRIPLET%

REM CMake generator
SET GENERATOR=Visual Studio 15 2017
IF "%ARCH%"=="x64" SET GENERATOR=%GENERATOR% Win64

REM VS generator x64 host parameter
SET HOST_PARAM=
IF "%ARCH%"=="x64" SET HOST_PARAM=-T "host=x64"

REM Generate CMake build system
cmake ..\.. -G "%GENERATOR%" %HOST_PARAM%

REM Execute CMake build system
cmake --build . --config %CONFIG%

REM Pop current directory
POPD
