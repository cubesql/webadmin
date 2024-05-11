@echo off
cls
echo *********************
echo * cubeSQL Web Admin *
echo *********************
echo.
echo Launch Web Application on Port:
echo - 1:   80
echo - 2: 8080
echo - 3: 4431 (default)
echo.

SET PORT=4431
CHOICE /T 10 /C 123 /D 3 /m "Choose Port Option:"
set _choice=%ERRORLEVEL%
if %_choice%==1 SET PORT=80&GOTO :LAUNCH
if %_choice%==2 SET PORT=8080&GOTO :LAUNCH
if %_choice%==3 SET PORT=4431&GOTO :LAUNCH

:LAUNCH
echo.
echo Launching cubeSQL Web Admin on Port %PORT%
echo Connect via Web Browser: http://localhost:%PORT%
echo.
echo Web Application is available while this Command Window is open.
echo To quit press Ctrl+C or close Command Window.
echo.

%0\..\cubeSQLWebAdmin.exe --Port=%PORT%
