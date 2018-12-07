:author
REM Author @jzomerfeld
:edit
REM mode and following line define how big the console windows should be
mode con:cols=65 lines=10
@echo off
	COLOR 7e
	TITLE [Phone_call - android, ADB must be installed]
@echo off

:begin
cls
REM setlocal

		REM Asking user for number to call / inserting the number variable [number] and -call?
set /p number= Hey! What number would You like to call? || Set number=NothingChosen
	If "%number%"=="NothingChosen" goto sub_error
	If "%number%"==digits goto call

:call
@echo off
	adb -s "9885e6534e424f414e" shell am start -a android.intent.action.CALL -d tel:"%number%"
:msg call
color 1E
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 1%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 10%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 20%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 35%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛ 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛ 50%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛ 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛ 60%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛ 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛ 80%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛ 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛ 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛ 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ 100%%
echo Call complete... %number%
echo.
echo.
TIMEOUT /T 5		
@echo off |clip
COLOR 7e
cls

:end
goto begin

:sub_cls
echo Nothing was chosen - cleaning
TIMEOUT /T 5
goto begin


:sub_error
ECHO Invaid number! Bye!
ECHO Try again!
TIMEOUT /T 5
goto begin



