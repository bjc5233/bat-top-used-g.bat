@echo off& call lib\loadE.bat elevate inifile& setlocal enabledelayedexpansion
::˵��
::  �޸�xftp���session�������е������ļ���(Զ��)
::����
::  %1 - �ֻ����ļ���·��
if "%~1" EQU "" (goto :EOF) else (set remotePath=%~1)

set confPath="C:\Program Files\XshellXftpPortable\Data\Settings\NetSarang\Xftp\Sessions\mobile.xfp"
%elevate% -c %inifile% %confPath% [WideInitialFolder] WideRemote=%remotePath%
goto :EOF