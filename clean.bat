@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo 正在清理临时文件...

if exist "packed\" (
    echo 删除 packed\ 目录...
    rmdir /s /q "packed"
)

echo ========================================
echo   清理完成！
echo ========================================
pause