@echo off
chcp 65001 >nul
cd /d "%~dp0"

git add -A -- .
git commit -m "更新笔记" -- .

echo.
pause
