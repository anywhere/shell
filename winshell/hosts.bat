:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::ʹ��Google�ľ���IP��ַ������Google��Google�кܶ�IP��ַ��ͨ��IP����ֱ�ӷ���Google��
::����ű�ͨ��ping�ҵ���������ip��д��hosts�ļ���
::���Խ���󲿷�Google�޷����ʻ����ȥ�����⡣����fq�������ᣬ�Ȳ����ˡ�
:: ֮��Ϳ����� google ssl  https://encrypted.google.com/?hl=zh-CN ������
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off 
ping www.google.cn -n 1| find "����">ip.txt
for /f "tokens=2-15 delims= " %%i in (ip.txt) do set googleip=%%i
echo %googleip%
findstr /e /v /r /c:"google.com" "C:\Windows\System32\drivers\etc\hosts">>hosts
echo %googleip% encrypted.google.com>>hosts
echo %googleip% docs.google.com>>hosts
echo %googleip% code.google.com>>hosts
echo %googleip% google.com>>hosts
rem copy hosts "C:\Windows\System32\drivers\etc\hosts" /y
rem del hosts /f  /q 