@echo off
mode con cols=113 lines=15 &color 0A
cls
echo.
echo 程序正在初始化. . .
echo.
echo ┌──────────────────────────────────────┐
set/p= ■<nul
for /L %%i in (1 1 38) do set /p a=■<nul&ping /n 1 127.0.0.1>nul
echo 100%%
echo └──────────────────────────────────────┘
pause