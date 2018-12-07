:mode
mode con:cols=60 lines=10
@echo off
	COLOR 7e
	TITLE [Phone call - WiFI ADB]
	adb connect 192.168.1.13:5555
@echo off
:begin
cls
:: Asking user for phonenumber to call / inserting the phonenumber variable and -call
echo [To recconect the ADB type: adb]
set /p phonephonenumber=Hey! What phonenumber would You like to call? || Set phonenumber=NothingChosen
SET _no_spaces=%_some_var: =%
If "%phonephonenumber%"=="NothingChosen" goto sub_error
If "%phonephonenumber%"=="adb" goto mode
	
:main
@echo off
	adb -s "192.168.1.13:5555" shell am start -a android.intent.action.CALL -d tel:"%phonephonenumber%"
	
:msg call
	color 1E
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 1%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 10%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 20%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 35%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛ 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛ 50%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛ 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛ 60%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛ 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛ 80%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛ 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛ 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %phonenumber%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛ 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ 100%%
echo Call complete... %phonenumber%
echo.
echo.
TIMEOUT /T 5		
@echo off |clip
COLOR 7e
cls


:end
goto begin
:sub_error
ECHO You did not enter correct phonenumber! Bye bye! Try again!


