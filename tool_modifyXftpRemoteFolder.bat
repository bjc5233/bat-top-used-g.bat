@echo off& call lib\loadE.bat elevate inifile& setlocal enabledelayedexpansion
::说明
::  修改xftp软件session配置项中的启动文件夹(远程)
::参数
::  %1 - 手机端文件夹路径
if "%~1" EQU "" (goto :EOF) else (set remotePath=%~1)

set confPath="C:\Program Files\XshellXftpPortable\Data\Settings\NetSarang\Xftp\Sessions\mobile.xfp"
%elevate% -c %inifile% %confPath% [WideInitialFolder] WideRemote=%remotePath%
goto :EOF