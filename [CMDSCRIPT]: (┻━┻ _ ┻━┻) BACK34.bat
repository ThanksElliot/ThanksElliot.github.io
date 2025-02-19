@echo off
:: Configuración
set "ORIGEN=\\fs\Informatica"
set "DESTINO=%~d0\Backup"
set "FECHA=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%"
set "LOG=%~d0\backup_log_%FECHA%.txt"

:: Crear carpeta de backup si no existe
if not exist "%DESTINO%" mkdir "%DESTINO%"

:: Informamos de lo que vamos a copiar
echo ---[ Backup Incremental - Modo Espejo ]---
echo   ORIGEN: %ORIGEN%
echo   DESTINO: %DESTINO%
echo ---------------------------------------------
pause

:: Copiar archivos en modo espejo (incremental)
echo  - Iniciando backup ...
echo Iniciando backup: %DATE% %TIME% >> "%LOG%"
robocopy "%ORIGEN%" "%DESTINO%" /MIR /R:2 /W:5 /LOG+:"%LOG%" /TEE /ETA
echo Backup completado: %DATE% %TIME% >> "%LOG%"
echo  - Backup finalizado

:: Esperar antes de cerrar (opcional)
pause
