@echo off
title ��̬ʱ��
mode con cols=50 lines=8 & color 1f
echo.
echo    ���ڵ�ʱ����
echo.
echo  %date%
echo      %time:~0,-3%
ping -n 2 127.0.0.1 > nul
cls
%0