@echo off
title �����ļ������ı��ļ��Ĺ���
:TOP
echo # �����ߣ�anywhere
echo # ��  �ܣ������ļ����б��ı�

set /p sourceDisk=�ļ�������·�������� D:\file��: 

title �����У����Ժ�...

dir %sourceDisk%\ /A:-D /B /N /O:N /W >> filelist.txt
title �����ļ������ı��ļ��Ĺ���
echo �ļ�����λ�ã�%sourceDisk%
start notepad filelist.txt

:RETURN
set /p delResult=ɾ���ı��ļ����˳�[y/n]:
if "%delResult%"=="y" (del filelist.txt
exit)
if "%delResult%"=="n" (goto EXIT)
goto RETURN

:EXIT

exit