@echo off
set pack_host=192.168.0.254
set user_name=sw2950
set user_pass=Cisco
set language=English

set tmp=telnet.vbs
echo Set sh=WScript.CreateObject("WScript.Shell") > %tmp%
echo WScript.Sleep 1000 >> %tmp%
echo sh.SendKeys "%user_name%{ENTER}" >> %tmp%
echo WScript.Sleep 1000 >> %tmp%
echo sh.SendKeys "{ENTER}" >> %tmp%
echo WScript.Sleep 1000 >> %tmp%
echo sh.SendKeys "%user_pass%{ENTER}" >> %tmp%
echo WScript.Sleep 1000 >> %tmp%


rem echo sh.SendKeys "exit{ENTER}" >> %tmp%

echo WScript.Sleep 1000 >> %tmp%
echo sh.SendKeys "{ENTER}" >> %tmp%
echo WScript.Sleep 1000 >> %tmp%

start telnet.exe %pack_host%
cscript //nologo //B %tmp%
del %tmp%
echo telnet success

rem ###############################The end of the server package##############################