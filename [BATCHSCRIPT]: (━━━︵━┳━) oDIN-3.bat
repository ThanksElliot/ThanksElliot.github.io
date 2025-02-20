@echo off
title Herramienta Avanzada de Seguridad - CMD
color 0A
setlocal EnableDelayedExpansion
chcp 65001 >nul

:: Establecer tamaño de la consola al máximo posible
mode con: cols=99999999999 lines=99999999999
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
echo 2. Ejecutar MRT o Malicious Software Removal Tool (Herramienta de Eliminación de Software Malicioso)
echo 3. Ejecutar SFC (Buscar y restaura archivos del sistema automagicamente)
echo 4. Ejecutar DISM (Herramienta de administracion y mantenimiento de imagenes de implementacion)
echo 5. Buscar procesos sospechosos
echo 6. Obtener clave de producto de Windows
echo 7. Ver conexiones de red activas
echo 8. Verificar uso del disco
echo 9. Buscar archivos ocultos
echo 10. Limpiar archivos temporales
echo 11. Escanear red / Esnifar red
echo 12. Invocar a Odin
echo 13. Salir
echo ==========================
set /p option=Selecciona una opcion (1-8): 

if "%option%"=="1" goto scan
if "%option%"=="2" goto mrtactivity
if "%option%"=="3" goto sfc
if "%option%"=="4" goto dism
if "%option%"=="5" goto procesos
if "%option%"=="6" goto getkey
if "%option%"=="7" goto conexiones
if "%option%"=="8" goto diskusage
if "%option%"=="9" goto searchhidden
if "%option%"=="10" goto cleantemp
if "%option%"=="11" goto networkinfo
if "%option%"=="12" goto logactivity
if "%option%"=="13" exit
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

:mrtactivity

echo Creo un archivo temporal mrt_log.txt
:: Crear un archivo de registro para MRT
echo Iniciando el análisis completo con MRT...
start mrt.exe /F:Y /Q

:: Esperar un momento para asegurarse de que MRT haya comenzado
timeout /t 5 > nul

:: Comprobar si MRT está en ejecución y mostrar un mensaje de progreso
:checkMRT
tasklist | find "mrt.exe" > nul
if %errorlevel%==0 (
    echo El análisis está en curso... Por favor, espere.
    timeout /t 30 > nul
    goto checkMRT
)

:: Mensaje final
echo Análisis completado.

endlocal

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

:scanvulnerabilities
echo Escaneando vulnerabilidades del sistema...
echo.

:: Usar PowerShell para escanear vulnerabilidades
powershell -Command "
    $vulnerabilities = Get-WindowsUpdate | Where-Object { $_.IsInstalled -eq $false }
    if ($vulnerabilities) {
        Write-Host 'Actualizaciones de seguridad pendientes:'
        $vulnerabilities | Select-Object -Property Title, Description
    } else {
        Write-Host 'No se encontraron vulnerabilidades conocidas.'
    }
"

pause
goto menu

:procesos
cls
echo 🕵️‍♂️ Procesos en ejecución:
echo ==================================================================================
tasklist /v | findstr /i "exe"
echo ==================================================================================
echo 🔎 Si ves nombres extraños, investígalos en Google.
pause
goto menu

:getkey
@echo off
echo Obteniendo clave de producto de Windows...
for /f "tokens=* delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$key=(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey; if ($key) { Write-Output $key } else { Write-Output 'No se encontró clave' }"') do set "productKey=%%i"

echo La clave de producto de Windows es: %productKey%
pause
goto menu

:conexiones
cls
echo 🌐 Conexiones de red activas:
echo ==================================================================================
netstat -ano
echo ==================================================================================
echo 🛑 Si ves una IP desconocida conectada a un puerto extraño, investígala.
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

:cleantemp
@echo off
echo Limpiando archivos temporales...
echo.

:: Eliminar archivos dentro de la carpeta TEMP
del /s /q "%temp%\*.*"

:: Eliminar carpetas vacías dentro de TEMP
for /d %%x in ("%temp%\*") do rd /s /q "%%x"

:: Confirmar la limpieza
echo Archivos temporales eliminados.
pause
goto menu

:networkinfo
setlocal

:: Obtener dirección IP
set "ip_address="
set "ip_address_6="
set "ip_gateway="
set "description="

for /f "tokens=1,* delims=:" %%a in ('ipconfig') do (
    set "ip_address=%%i"ac
    set "ip_address=%ip_address: =%"

    set "ip_address_6=%%i"
    set "ip_address_6=%ip_address_6: =%"

    set "ip_gateway=%%i"
    set "ip_gateway=%ip_gateway: =%"

    set "description=%%i"
)

:: Limpiar el archivo temporal
echo ==================================================================================
echo    Información de la Red
echo ==================================================================================
echo .
:: Obtener dirección IP

echo Descripcion:
echo ==================================================================================
:: Para obtener la descripción de la interfaz, puedes usar el comando 'netsh'
netsh interface show interface
echo ==================================================================================

echo Direccion IP:
ipconfig | findstr /i "IPv4"
echo.

echo Direccion IPv6:
echo ==================================================================================
ipconfig | findstr /i "IPv6"
echo.

echo Direccion MAC:
getmac
echo ==================================================================================

echo Puerta de enlace:
echo ==================================================================================
ipconfig | findstr /i "Puerta de enlace"
echo ==================================================================================

echo Información de red enviada.
pause
goto menu

:logactivity

:: Definir el archivo de registro
set logFile="%USERPROFILE%\Desktop\Logs_oDIN-3.txt"

:: Punto para registrar la hora de inicio de sesión
:Log-Activity
setlocal
set timestamp=%date% %time%
echo %timestamp% - Un Odin travieso a pasado por aquí... >> %logFile%
endlocal
goto :eof

:: Llamar a la función para registrar la hora de inicio de sesión
call :Log-Activity
:: Verificar si el archivo de registro existe, si no, crearlo
if not exist %logFile% (
    echo Creando archivo de registro...
    echo. > %logFile%  :: Esto crea el archivo vacío
)
:: Llamar a la función para registrar la hora de inicio de sesión
call :Log-Activity
echo Hora de inicio de sesión registrada.
pause
goto menu
