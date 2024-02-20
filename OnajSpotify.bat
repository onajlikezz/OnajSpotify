@echo off
:: Set Title
title OnajSpotify / discord.gg/pBFaCQQVBV
:: GUIs
:::
:::          ____              _ ____          __  _ ___    
:::         / __ \___  ___ _  (_) __/__  ___  / /_(_) _/_ __
:::        / /_/ / _ \/ _ `/ / /\ \/ _ \/ _ \/ __/ / _/ // /
:::        \____/_//_/\_,_/_/ /___/ .__/\___/\__/_/_/ \_, / 
:::                      |___/   /_/                 /___/  
:::          Script By OnajLikezz || discord.gg/pBFaCQQVBV
:::                 
::+                     Press enter to start   
::+     
::-                    Successfully completed  
::-
::.                     Run As Administrator!
::.

:: Chacking For Administrator Privileges
>nul 2>&1 net session || (
    cls
    for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
    for /f "delims=:. tokens=*" %%A in ('findstr /b ::. "%~f0"') do @echo(%%A
    pause >nul
    exit /b 1
)

:: Start Screen
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /f "delims=:+ tokens=*" %%A in ('findstr /b ::+ "%~f0"') do @echo(%%A
pause >nul

:: Spotify Script
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"
powershell -NoProfile -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://spotx-official.github.io/run.ps1'))}"
cls


:: Finish Screen
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /f "delims=:- tokens=*" %%A in ('findstr /b ::- "%~f0"') do @echo(%%A
pause >nul