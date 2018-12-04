mode con:cols=60 lines=10
:author_edit
@echo off
	COLOR 7e
	TITLE [Phone call - android, ADB must be installed]
@echo off
:begin
cls
REM Asking user for number to call / inserting the number variable and -call
REM ECHO @REM Author @jzomerfeld
	set /p UserInputPath=Hey! What number would You like to call? || Set UserInputPath=NothingChosen
	
If "%UserInputPath%"=="NothingChosen" goto sub_error
If "%UserInputPath%" neq number goto sub_error
REM If /i "%UserInputPath%"=="e" goto begin
If /i "%UserInputPath%"=="cls" goto sub_cls

:call
@echo off
	adb -s "9885e6534e424f414e" shell am start -a android.intent.action.CALL -d tel:"%UserInputPath%"
:msg call
		REM color fa
		REM @echo [-------------------------------------]
		REM @echo [-------------------------------------]
		REM @echo [---------------Calling---------------]
		REM @echo [--------------%UserInputPath%--------------]
		REM @echo [-------------------------------------] *
	REM @echo off
color 1E
echo.
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 1%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 10%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 15%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 20%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 25%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛˛ 35%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛˛˛˛ 45%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛˛ 50%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛˛ 55%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛˛ 60%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛˛ 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛˛˛ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛˛ 80%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛˛ 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛˛ 90%%
echo ----------------------------------
ping -n 1 localhost >nul
TIMEOUT /T 1 /NOBREAK > NUL
cls
echo.
echo.
echo Calling... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ˛ 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Call complete... %UserInputPath%
echo ----------------------------------
echo Progress: ŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰŰ 100%%
echo.
echo.
TIMEOUT /T 7		
@echo off |clip
COLOR 7e
cls

:end
goto begin

:sub_cls
echo Nothing was chosen - cleaning
TIMEOUT /T 4
goto begin


:sub_error
ECHO Invaid number! Bye!
ECHO Try again!
TIMEOUT /T 4
goto begin



