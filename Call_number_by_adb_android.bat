:author
REM Author @Jakub_Zomerfeld : www.github.com/j-zom
@echo off
REM Deleting previously save file with device_id && reseting adb
:reset_adb
del device_id
adb kill-server && adb start-server
REM Saving a device_id=IMEI into a hashed file
:define_device_id
adb devices > device_id

REM Print to console the defined device_id, %device_id% will be used later to pick a device which has to procced a call_command
:print device_id
@echo off
for /f "tokens=1" %%a in (device_id) do set device_id=%%a
echo Connected device:
echo %device_id%

:edit
REM mode and following line define how big the console windows should be
mode con:cols=65 lines=10
@echo off
	COLOR 7e
	TITLE [Phone_call - android, ADB must be installed]
@echo off

:begin
cls
REM Function to use before pick a %number%
echo/
echo To reset ADB press - 1
echo/
REM Asking user for number to call / inserting the number variable [number] and call
set /p number= Hey! What number would You like to call? || set number=NothingChosen
REM SET _no_spaces=%_some_var: =%

REM Defining arguments
If "%number%"=="1" goto reset_adb
If "%number%"===%digits% goto call
If "%number%"=="NothingChosen" goto sub_cls


echo/
echo Author @Jakub_Zomerfeld : www.github.com/j-zom
echo/

:call
@echo off
REM	adb -s "9885e6534e424f414e" shell am start -a android.intent.action.CALL -d tel:"%number%"
REM Previously defined device_id is used here in " "
adb -s "%device_id%" shell am start -a android.intent.action.CALL -d tel:"%number%"

:msg call
color 1E
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 1%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 10%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 20%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 35%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛ 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛ 50%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛ 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛ 60%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛ 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛ 80%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛ 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛ 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo Calling... %number%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛ 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo/
echo/
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ 100%%
echo Call complete... %number%
echo/
echo/
TIMEOUT /T 3		
REM @echo off |clip
@echo off
COLOR 7e
cls

:end
goto begin

:sub_cls
echo Nothing was chosen - cleaning
TIMEOUT /T 2
goto begin

:sub_error
ECHO Invalid number! Bye!
ECHO Try again!
TIMEOUT /T 2
goto begin