@echo off
title 导出文件名到文本文件的工具
:TOP
echo # 制作者：anywhere
echo # 功  能：导出文件名列表到文本

set /p sourceDisk=文件的完整路径（比如 D:\file）: 

title 生成中，请稍后...

dir %sourceDisk%\ /A:-D /B /N /O:N /W >> filelist.txt
title 导出文件名到文本文件的工具
echo 文件所在位置：%sourceDisk%
start notepad filelist.txt

:RETURN
set /p delResult=删除文本文件并退出[y/n]:
if "%delResult%"=="y" (del filelist.txt
exit)
if "%delResult%"=="n" (goto EXIT)
goto RETURN

:EXIT

exit