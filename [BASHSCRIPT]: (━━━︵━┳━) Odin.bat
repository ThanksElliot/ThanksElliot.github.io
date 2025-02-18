@echo off
title Herramienta Avanzada de Seguridad - CMD
color 0A
chcp 65001 >nul
:menu
cls
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMWWXKOkxddooooooddxkO0KNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMWX0kolc::;;;::;;;;;;;;::cloxOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMWN0dl:;:;;:;;;;;;;;;;;;;;;;;;;;:clxOXWWMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMWXko::;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;:cdOXWMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMWNOl:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;::;;;:lkKWMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMWKd:;:;;;;;::;:;;;;;;;;;;;;;;;;;;;;;;;::;;;:;:lkXWMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMW0o:;;;;;;;;:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;;:lONMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMWKo:;;;::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;cxXWMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMXd:;:;;::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:dXWMMMMMMMMMMMMM
echo MMMMMMMMMMMMWOc::;:;;;;;;;;;;;;:;;;:;;;;;;;;;;;;;;;;;;;;:;;:;;;;;;:xNMMMMMMMMMMMMM
echo MMMMMMMMMMMMNd:;;;;;;;;;;;;;;;::;;;;;:;;:;;;::;;;;;;;;;;;;;;;;;;:;:l0WMMMMMMMMMMMM
echo MMMMMMMMMMMWKo;;;;;;;;;:;::;;;:;::;;;::cllllc::;;;;;;;;;;;;;;;;;;;:cdKNMMMMMMMMMMM
echo MMMMMMMMMMMWKo;;;;;;;;;;;:cc:;;;;;;:looollccc::;;;;;;;;;;;;;;;;;:;:::cxXMMMMMMMMMM
echo MMMMMMMMMMMMXo:;:;;;;;;;;::ll:;;;;cdxl::;:lol:;::;;;;;;;;;;;;;;;:cdkoccxNMMMMMMMMM
echo MMMMMMMMMMMMNx:;;;;::;;;::;col::;:xkl::lokXNKd::;;;;;;;;;;;;;;;;:xXXxc:oKMMMMMMMMM
echo MMMMMMMMMMMMW0l:;;;;;;;;;:;:loc:cxKx:;cOXWMMWOc;:;;;;;;;;;;;;;;;l0WNx::oKWMMMMMMMM
echo MMMMMMMMMMMMMNkc;;::;;;;;;;::oxk0K0o:;oXWWMMNx:;;;;;;;;;;;;:;;;;l0WXd::dXMMMMMMMMM
echo MMMMMMMMMMMMMMNkc;;::;;;:;;:;:clllol;:dXWMMW0l:;:;;;;;;;;;::::;;cONKo;:kNMMMMMMMMM
echo MMMMMMMMMMMMMMMNkc:::;;;;;:::;;;;:c:;:oKWWMNx::;;;;;;;;;;::;:;::ckN0l;cOWMMMMMMMMM
echo MMMMMMMMMMMMMMMMW0dc::::;;cl:;;:::::;:l0WWMXd;;;;;;;;;;;;;:;;;::ckN0l;l0WMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMN0o:;;;;col:::;::::;lKWWMXo;;;;;;;;;;;;:cl::;:cON0l;l0WMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMWNOoc:;:lxo:;;:c:;;oKWWWKo:;:;;:;;;;;:lOkc:;;lONOc;lKWMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMWN0occ:dOxl:ll:::xNWWWOl:;;;;:;;;:::dXKo:;;:dOdc:dXMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMNkodlcxXX00d:;:kNWWWOl:;;:;;:;;::dKWNkc;::ccccdKWMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMWNOoc:oXWWNk:;:oOKK0xl:::::;;;::dKNXN0l;cxkxx0NWMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMNkc:xNMMWKd::::ccccoxO0Oxl::;:xKOkKOl:lKWWMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMNx:l0WMMMWN0xddddk0NWMWNxlc::::cc:cl::lKMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMW0lcONMMMMMMMWWWWWMMMMMWKo:;:c:;:::;cl:oKMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMWOcl0WMMMMMMMMMMMMMMMMMWkc;;coc;:ll:odoONMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMWKocxXWMMMMMMMMMMMMMMMMW0dlokdc:oxod0XNWMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMWKdlok0KNWWMMMMMMMMMMMMWNXNWX0KNNNWWMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMWKOdollokKKO0KXWWWWNX0dkXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNKOdlll::cdxdkOdodloKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWKxc:::cc:clccdkKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNkc;;;;;:::dKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN0dooodoldKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWWWNXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo =================================================================================
echo    Mantenimiento de Seguridad
echo =================================================================================
echo 1. Escanear con Windows Defender
echo 2. Ejecutar SFC (Comprobador de Archivos de Sistema)
echo 3. Ejecutar DISM (Herramienta de Administracion y Mantenimiento de Imagenes de Implementacion)
echo 4. Escanear vulnerabilidades con PowerShell
echo 5. Salir
echo ==========================
set /p option=Selecciona una opcion (1-5): 

if "%option%"=="1" goto defender
if "%option%"=="2" goto sfc
if "%option%"=="3" goto dism
if "%option%"=="4" goto powershell
if "%option%"=="5" exit
goto menu

:defender
echo Escaneando con Windows Defender...
start /wait "" "C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
pause
goto menu

:sfc
echo Ejecutando Comprobador de Archivos de Sistema (SFC)...
sfc /scannow
pause
goto menu

:dism
echo Ejecutando DISM para reparar la imagen de Windows...
dism /Online /Cleanup-Image /RestoreHealth
pause
goto menu

:powershell
echo Escaneando vulnerabilidades con PowerShell...
powershell -Command "Get-WindowsFeature | Where-Object { $_.InstallState -eq 'Installed' } | Select-Object Name, DisplayName"
pause
goto menu

