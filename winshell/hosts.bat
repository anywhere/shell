:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::使用Google的镜像IP地址来访问Google，Google有很多IP地址，通过IP可以直接访问Google。
::这个脚本通过ping找到访问最快的ip，写入hosts文件。
::可以解决大部分Google无法访问或进不去的问题。不用fq，腰不酸，腿不疼了。
:: 之后就可以用 google ssl  https://encrypted.google.com/?hl=zh-CN 不解释
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off 
ping www.google.cn -n 1| find "来自">ip.txt
for /f "tokens=2-15 delims= " %%i in (ip.txt) do set googleip=%%i
echo %googleip%
findstr /e /v /r /c:"google.com" "C:\Windows\System32\drivers\etc\hosts">>hosts
echo %googleip% encrypted.google.com>>hosts
echo %googleip% docs.google.com>>hosts
echo %googleip% code.google.com>>hosts
echo %googleip% google.com>>hosts
rem copy hosts "C:\Windows\System32\drivers\etc\hosts" /y
rem del hosts /f  /q 