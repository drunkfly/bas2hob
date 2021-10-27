@echo off

cd %~dp0
if errorlevel 1 exit /B 1

if exist bas2hob.exe del bas2hob.exe
if errorlevel 1 exit /B 1
if exist test.trd del test.trd
if errorlevel 1 exit /B 1

tcc\tcc.exe -o bas2hob.exe bas2tap.c
if errorlevel 1 exit /B 1

bas2hob -a10 -sTEST test.bas
if errorlevel 1 exit /B 1

trdtool\trdtool # test.trd
if errorlevel 1 exit /B 1

trdtool\trdtool + test.trd test.$b
if errorlevel 1 exit /B 1

exit /B 0
