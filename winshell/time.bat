@echo off
title 动态时钟
mode con cols=50 lines=8 & color 1f
echo.
echo    现在的时间是
echo.
echo  %date%
echo      %time:~0,-3%
ping -n 2 127.0.0.1 > nul
cls
%0