@echo off


title running as adminastor 
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: ------------------------------------------------------------------------------------------------------------------------------
:variables
set red=[0;31m
set reset=[0m
set bold=[1m
set white=[0m
set blue=[96m
set grey=[38;5;238m
set r=[0m
set -=%blue%-%white%
REM --> Check for Admin permissions
@echo off
title link maker
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: ------------------------------------------------------------------------------------------------------------------------------
:variables
set red=[0;31m
set reset=[0m
set bold=[1m
set white=[0m
set blue=[96m
set grey=[38;5;238m
set r=[0m
set -=%blue%-%white%


cls
mode 55, 14

:start 

%blue%
echo.
echo                ___       __  
echo               / /_/___  / /__ %white%
echo              / / / __ \/ //_/
echo             / / / / / / / _
echo            /_/_/_/ /_/_//_/
echo.                                                                           
echo           %grey%     codded by bridgezan 
echo           %grey%github: https://github.com/bridgerzan
echo           %grey%discord:bridgezanyt1
 
timeout /t 1 /nobreak >nul


echo             %white%press %blue%1%white% show list
echo             %white%press %blue%2 %white%info


set /p choose=" > %white%"
if /i "%choose%"=="1" (goto list)
if /i "%choose%"=="2" (goto info)


:info (
start "" "https://github.com/bridgerzan"
echo discord:bridgezanyt1 > info.txt
start info.txt 
del info.txt 
goto epic
)


:list (
cls 
mode 20, 12
echo %grey%1-%white%instagram 
echo %grey%2-%white%whatsapp
echo %grey%3-%white%telegram
echo %grey%4-%white%prank links
echo %grey%5-%white%Skype
echo %grey%6-%white%TikTok
set /p choose=" > %white%"
if /i "%choose%"=="2" (goto whatsapp)
if /i "%choose%"=="1" (goto instagram)
if /i "%choose%"=="3" (goto telegram)
if /i "%choose%"=="4" (goto prank)
if /i "%choose%"=="5" (goto Skype)
if /i "%choose%"=="6" (goto TikTok)
)

:whatsapp (
cls
mode 37, 2
set "site="
set /p site=Enter phone number: 
start "" "https://api.whatsapp.com/send/?phone=%site%&text&type=phone_number&app_absent=0"
goto list 
)

:instagram (
cls
mode 37, 2
set "id="
set /p id=Enter id: 
start "" "https://www.instagram.com/%id%/"
goto list
)


:telegram (
cls
mode 37, 2
set "id="
set /p id=Enter id: 
start "" "https://t.me/%id%"
goto list
)

:Skype (
cls
mode 37, 2
set "id="
set /p id=Enter name or gmail: 
start "" "https://skype.com/%id%?chat"
goto list
)

:TikTok (
cls
mode 37, 2
set "name="
set /p name=Enter id: 
start "" "https://www.tiktok.com/@%name%"
goto list
)

:prank (
cls 
mode 37, 10
echo prank 1 (windows update)
echo prank 2 (fake dos)
echo prank 3 (only fans duck)
set /p choose=" > %white%"
if /i "%choose%"=="1" (goto windows)
if /i "%choose%"=="2" (goto dos)
if /i "%choose%"=="3" (goto duck)
)
:windows (
start "" "https://pranx.com/win10-update"
goto list
)

:dos (
start "" "https://geekprank.com/fake-dos"
goto list
)

:duck (
set "name="
set /p name=Enter name: 
start "" "https://only-fans.me/%name%"
goto list
)

