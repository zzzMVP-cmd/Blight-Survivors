@echo off
chcp 65001 >nul
cd /d "%~dp0"

set VERSION=v1.3.5
set PACK_DIR=packed
if not exist "%PACK_DIR%" mkdir "%PACK_DIR%"

copy /Y "Blight Survivors.html" "%PACK_DIR%\Blight Survivors_%VERSION%.html"

echo ========================================
echo   打包完成！
echo   已生成: packed\Blight Survivors_%VERSION%.html
echo ========================================
pause