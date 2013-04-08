@echo off
set puttyPath=D:\GreeSoft\GreenOne

set ip=192.168.0.2

set port=22

set account=linus

set password=linus!@#

%puttyPath%/putty -P %port% %account%@%ip%:/viss -pw %password%