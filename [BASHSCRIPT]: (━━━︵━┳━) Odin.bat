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
echo ==================================================================================
echo    Mantenimiento de Seguridad
echo ==================================================================================
echo 1. Analizar equipo con Windows Defender en busca de virus
echo 2. Ejecutar SFC (Buscar y restaura archivos del sistema)
echo 3. Ejecutar DISM (Herramienta de administracion y mantenimiento de imagenes de implementacion)
echo 4. Escanear vulnerabilidades con PowerShell
echo 5. Obtener clave de producto de Windows
echo 6. Analizar equipo en busca de virus
echo 7. Verificar uso del disco
echo 8. Buscar archivos ocultos
echo 9. Limpiar archivos temporales
echo 9. Salir
echo ==========================
set /p option=Selecciona una opcion (1-8): 

if "%option%"=="1" goto scan
if "%option%"=="2" goto sfc
if "%option%"=="3" goto dism
if "%option%"=="4" goto powershell
if "%option%"=="5" goto getkey
if "%option%"=="7" goto diskusage
if "%option%"=="8" goto searchhidden
if "%option%"=="9" goto diskpartinfo
if "%option%"=="10" exit
goto menu

:scan
echo Iniciando escaneo rápido con Windows Defender...
start /wait "" "C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1

:: Verificar el resultado del escaneo
echo Verificando resultados del escaneo...
for /f "tokens=*" %%a in ('powershell -command "(Get-MpThreat | Select-Object -ExpandProperty ThreatName)"') do (
    echo !%%a! | findstr /i "malware" >nul
    if !errorlevel! == 0 (
        echo.
        echo !%%a! >> resultados.txt
    )
)

:: Mostrar resultados
if exist resultados.txt (
    echo.
    echo Se han encontrado amenazas:
    echo.
    type resultados.txt
    echo.
    echo Los archivos maliciosos se han marcado en rojo.
    echo.
    del resultados.txt
) else (
    echo No se encontraron amenazas.
)

pause
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

:getkey
echo Obteniendo clave de producto de Windows...
for /f "delims=" %%i in ('powershell -command "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"') do set "productKey=%%i"
echo La clave de producto de Windows es: %productKey%
pause
goto menu

:diskusage
echo Verificando uso del disco...
echo.

powershell -Command "Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name='FreeSpace(GB)';Expression={[math]::round($_.Free/1GB,2)}}, @{Name='UsedSpace(GB)';Expression={[math]::round(($_.Used)/1GB,2)}}, @{Name='TotalSize(GB)';Expression={[math]::round(($_.Used + $_.Free)/1GB,2)}}"

pause
goto menu

:searchhidden
echo Buscando archivos ocultos en la carpeta especificada...
set /p folder=Introduce la ruta de la carpeta (ejemplo: C:\Users\TuUsuario\Documentos): 

if exist "%folder%" (
    echo Archivos ocultos en %folder%:
    dir /a:h "%folder%"
) else (
    echo La carpeta especificada no existe.
)

pause
goto menu

:diskpartinfo
echo Obteniendo información de las particiones del disco...
echo.

:: Usar WMIC para obtener información de las particiones
wmic logicaldisk get caption,filesystem,freespace,size

pause
goto menu
