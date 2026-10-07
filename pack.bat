@echo off
chcp 65001 >nul
cd /d "%~dp0"

set PACK_DIR=packed
if not exist "%PACK_DIR%" mkdir "%PACK_DIR%"

set TIMESTAMP=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%

copy /Y "Blight Survivors.html" "%PACK_DIR%\Blight Survivors_%TIMESTAMP%.html"

echo ========================================
echo   打包完成！
echo   已生成: packed\Blight Survivors_%TIMESTAMP%.html
echo ========================================
pause