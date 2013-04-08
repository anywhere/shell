@echo off
start /wait iexplore "www.baidu.com"
rem start chrome "www.baidu.com"

ping -n 2 -w 1000 0.0.0.1>null

rem tskill iexplore
rem %0
pause