@echo off
::����
::  g.batִ����ת��ĳһ����
::  �����Ϊ���̡�ϵͳ���ߡ�ϵͳ����������塢�ļ��С���ַ
::  ����Ϊ��ʱ����key�ı�
::  �Ҳ�����Ӧ�Ľ���ʱ, ����ݵ�ǰ����key��key�ı������ַ������ƶȱȽ�, �ṩ����
set key=%1
set guessKeyFile=lib\gKey.txt
if "%1"=="" (
    (for /f "tokens=1-4 delims== " %%i in (%~f0) do if "%%i %%j %%k"=="if /i %%1" echo %%l)>%guessKeyFile%
    exit
)



::========================= ���� =========================
for %%i in (c d e f g h s b i) do if /i %1==%%i call :disk %%i
::========================= ���� =========================




::========================= ϵͳ���� =========================
if /i %1==calc call :system ������ "start calc"
if /i %1==jisuanqi call :system ������ "start calc"
if /i %1==osk call :system ������� osk
if /i %1==jianpan call :system ������� osk
if /i %1==wmp call :system WindowsMediaPlayer "start wmp"
if /i %1==notepad call :system ���±� notepad
if /i %1==jishiben call :system ���±� notepad
if /i %1==mspaint call :system ��ͼ mspaint
if /i %1==huatu call :system ��ͼ mspaint
if /i %1==snippingtool call :system ��ͼ snippingtool
if /i %1==jietu call :system ��ͼ snippingtool
::========================= ϵͳ���� =========================





::========================= ϵͳ���� =========================
if /i %1==regedit call :system ע��� regedit
if /i %1==zhucebiao call :system ע��� regedit
if /i %1==gpedit call :system ����� gpedit.msc
if /i %1==zucelue call :system ����� gpedit.msc
if /i %1==msconfig call :system ϵͳ���� msconfig
if /i %1==msinfo32 call :system ϵͳ��Ϣ msinfo32

if /i %1==winver call :system windows�汾 winver
if /i %1==winversion call :system windows�汾 winver
if /i %1==mstsc call :system Զ������[terminalServicesClient] mstsc
if /i %1==yuanchengzhuomian call :system Զ������[terminalServicesClient] mstsc
if /i %1==explorer call :system ��Դ������ explorer
if /i %1==sndvol call :system �����ϳ��� sndvol
if /i %1==snd call :system �����ϳ��� sndvol

if /i %1==systempropertiesadvanced call :system �߼�ϵͳ����[�����������������������Զ������] systempropertiesadvanced
if /i %1==huanjingbianliang call :system �߼�ϵͳ����[�����������������������Զ������] systempropertiesadvanced
if /i %1==taskmgr call :system ��������� taskmgr
if /i %1==renwuguanliqi call :system ��������� taskmgr
if /i %1==uac call :system �û��˻�֪ͨ���� UserAccountControlSettings

if /i %1==compmgmt call :system ���������[�������̹����¼��鿴�������ܼ��������豸������������] compmgmt.msc
if /i %1==diskmgmt call :system ���̹��� diskmgmt.msc
if /i %1==perfmon call :system ���ܼ����� perfmon.msc
if /i %1==devmgmt call :system �豸������ devmgmt.msc
if /i %1==eventvwr call :system �¼��鿴�� eventvwr.msc
if /i %1==taskschd call :system ����ƻ� taskschd.msc
if /i %1==task call :system ����ƻ� taskschd.msc
if /i %1==services call :system ���� services.msc
if /i %1==fuwu call :system ���� services.msc
::========================= ϵͳ���� =========================






::========================= ������� =========================
if /i %1==control call :system ������� control
if /i %1==ctl call :system ������� control
if /i %1==kongzhimianban call :system ������� control

if /i %1==ctltimedate call :system ���ں�ʱ�� timedate.cpl
if /i %1==ctldate call :system ���ں�ʱ�� timedate.cpl
if /i %1==ctlapp call :system ����͹��� appwiz.cpl
if /i %1==ctlinternet call :system Internet���� inetcpl.cpl
if /i %1==ctlsysdm call :system ϵͳ���� sysdm.cpl
if /i %1==ctlshezhi call :system ϵͳ���� sysdm.cpl
if /i %1==ctldesk call :system �������� desk.cpl
if /i %1==ctlmouse call :system ������� main.cpl
if /i %1==ctlquyu call :system ���� intl.cpl
if /i %1==ctlsound call :system ���� mmsys.cpl
if /i %1==ctlsnd call :system ���� mmsys.cpl
if /i %1==ctlpower call :system ��Դѡ�� powercfg.cpl
if /i %1==ctldianyuan call :system ��Դѡ�� powercfg.cpl
if /i %1==ctlfirewall call :system window����ǽ Firewall.cpl
if /i %1==ctlfanghuoqiang call :system window����ǽ Firewall.cpl
if /i %1==ctlwangluo call :system �������� ncpa.cpl
if /i %1==ctlnetwork call :system �������� ncpa.cpl
::========================= ������� =========================






::========================= �ļ��� =========================
::ϵͳ
if /i %1==temp call :directory %temp%
if /i %1==pro call :directory "%systemdriver%\Program Files"
if /i %1==pro2 call :directory "%systemdriver%\Program Files (x86)"
if /i %1==code call :directory C:\code
if /i %1==desk (if exist %userprofile%\desktop (call :directory %userprofile%\desktop) else (call :directory %userprofile%\����))
if /i %1==ctheme call :directory C:\Windows\Resources\Themes
if /i %1==theme (
    if /i "%2"=="" call :directory D:\theme
    if /i "%2"=="win7" call :directory D:\theme\������\win7����
    if /i "%2"=="c" call :directory %systemdrive%\Windows\Resources\Themes
    goto :404
)
if /i %1==startmenu call :directory "C:\Users\Admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if /i %1==down call :directory C:\Users\Admin\Downloads\
if /i %1==download call :directory C:\Users\Admin\Downloads\
if /i %1==systask call :directory C:\Windows\System32\Tasks
if /i %1==host call :directory %systemdriver%\Windows\System32\drivers\etc
if /i %1==home call :directory C:\Users\Admin
::����
if /i %1==movie call :directory I:\movie
if /i %1==music call :directory D:\music
if /i %1==pic call :directory D:\pic
if /i %1==study call :directory F:\study
::Ӧ��
if /i %1==baiduyunlocal call :directory �ٶ��Ʊ��� D:\BaiduYunDownload
::========================= �ļ��� =========================




::========================= ��ַ =========================
::ʶ����ַ
set "target=%1"
if /i "%target:~0,4%"=="http" call :chrome %1& goto :EOF
::����
if /i %1==ljs call :chrome ½���� https://www.lu.com/
if /i %1==zfb call :chrome ֧���� https://www.alipay.com/
if /i %1==zhifubao call :chrome ֧���� https://www.alipay.com/
::����
if /i %1==doubandongxi call :chrome ���궫�� https://dongxi.douban.com/
if /i %1==shenmezhidemai call :chrome ʲôֵ���� http://www.smzdm.com/
if /i %1==smzdm call :chrome ʲôֵ���� http://www.smzdm.com/
if /i %1==taobao (
	if /i "%2"=="" call :chrome �Ա� https://www.taobao.com/
	call :chrome �Ա� "https://s.taobao.com/search?q=%2"
)
if /i %1==jd call :chrome ���� https://www.jd.com/
if /i %1==tianmao call :chrome ��è https://www.tmall.com/
if /i %1==tianmaochaoshi call :chrome ��è���� https://chaoshi.tmall.com/
if /i %1==tmcs call :chrome ��è���� https://chaoshi.tmall.com/
if /i %1==yanxuan call :chrome ������ѡ http://you.163.com/
::֪ʶ
if /i %1==zhihu call :chrome ֪�� http://www.zhihu.com/
::����
if /i %1==weixin call :chrome ΢����ҳ�� https://wx.qq.com/
if /i %1==weibo call :chrome ����΢�� http://weibo.com/
::����
if /i %1==baiduyun call :chrome �ٶ��� http://pan.baidu.com/
if /i %1==json call :chrome JSON��ʽ�� http://www.bejson.com/
if /i %1==md5 call :chrome md5���� http://www.atool.org/file_hash.php/
if /i %1==qr call :chrome ��ά�� http://tool.oschina.net/qr/
if /i %1==12306 call :chrome 12306 https://kyfw.12306.cn/otn/leftTicket/init
if /i %1==baiduditu call :chrome �ٶȵ�ͼ http://map.baidu.com/
if /i %1==baidumap call :chrome �ٶȵ�ͼ http://map.baidu.com/
::����
if /i %1==sinamail call :chrome �������� http://mail.sina.com.cn/
if /i %1==gmail call :chrome �ȸ����� https://mail.google.com/
if /i %1==mailsina call :chrome �������� http://mail.sina.com.cn/
if /i %1==mailgg call :chrome �ȸ����� https://mail.google.com/
if /i %1==mailqq call :chrome QQ���� https://mail.qq.com/
if /i %1==mail163 call :chrome ����163���� http://mail.163.com/
::����
if /i %1==qiushibaike call :chrome ���°ٿ� http://www.qiushibaike.com/
if /i %1==bili set key=bilibili
if /i %key%==bilibili (
	if /i "%2"=="" call :chrome Bվ http://www.bilibili.com/
	call :chrome Bվ "http://search.bilibili.com/all?keyword=%2"
)
::��������
if /i %1==baidu (
    if /i "%2"=="" call :chrome �ٶ� https://www.baidu.com/
	call :chrome �ٶ� "https://www.baidu.com/s?wd=%2"
)
if /i %1==bing call :chrome bing http://cn.bing.com/
if /i %1==google call :chrome google "https://www.google.com.hk/?gws_rd=cr,ssl"
if /i %1==gg call :chrome google "https://www.google.com.hk/?gws_rd=cr,ssl"
if /i %1==ggstore call :chrome google https://chrome.google.com/webstore/category/extensions
if /i %1==chromestore call :chrome google https://chrome.google.com/webstore/category/extensions
::��Ӱ
if /i %1==doubandianying (
	if /i "%2"=="" call :chrome �����Ӱ https://movie.douban.com/
	call :chrome �����Ӱ "https://movie.douban.com/subject_search?search_text=%2"
)
if /i %1==shiguang call :chrome ʱ���� http://www.mtime.com/
::��Ѷ
if /i %1==douban call :chrome ���� https://www.douban.com/
::�ֻ�
if /i %1==kuan (
	if /i "%2"=="" call :chrome �ᰲ http://www.coolapk.com/
	call :chrome �ᰲ "http://www.coolapk.com/search?q=%2"
)
if /i %1==wandoujia call :chrome �㶹�� http://www.wandoujia.com/apps
::��Ƶ
if /i %1==aiqiyi call :chrome ������ http://www.iqiyi.com/
::����
if /i %1==qiniu call :chrome ��ţ�ƴ洢 https://portal.qiniu.com/bucket
if /i %1==github call :chrome github https://github.com/bjc5233
if /i %1==npm (
	if /i "%2"=="" call :chrome npm https://www.npmjs.com
	call :chrome npm "https://www.npmjs.com/search?q=%2"
)
::other
if /i %1==next call :chrome nexttoyou http://www.nexttoyou.me/
if /i %1==nextadmin call :chrome nexttoyou-admin http://www.nexttoyou.me/wp-admin/
if /i %1==huaban call :chrome ���� http://huaban.com/
::========================= ��ַ =========================









::========================= �ĵ��༭ =========================
if /i %1==edithost call :npp %systemdriver%\Windows\System32\drivers\etc\hosts
::========================= �ĵ��༭ =========================







::========================= ���� =========================
:guessKey
start "" tool_guessKey.bat "%~1" "%guessKeyFile%" %0
exit


:404
mode 30,8& title go& call lib\load.bat _parseShowBlockNum2
set numStr=404& set numStrPrefix=  
echo.
(%_call% ("numStr numStrPrefix") %_parseShowBlockNum2%)
timeout 2 >nul& exit


:system
echo %~1 %~2
if /i "%~2"=="" (%~1) else (%~2)
exit


:chrome
echo %~1 %~2
if /i "%~2"=="" (start gg.lnk %~1) else (start gg.lnk %~2)
exit

:ie
echo %~1 %~2
if /i "%~2"=="" (start ie.lnk %~1) else (start ie.lnk %~2)
exit


:360bs
echo %~1 %~2
if /i "%~2"=="" (start 360bs.lnk %~1) else (start 360bs.lnk %~2)
exit


:disk
echo %1
start %1:
exit


:directory
echo %1 %2
if /i "%~2"=="" (start "" %1) else (start "" %2)
exit


:npp
echo %1 %2
if /i "%~2"=="" (npp.lnk %1) else (npp.lnk %2)
exit
::========================= ���� =========================