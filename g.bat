@echo off
::介绍
::  g.bat执行跳转到某一界面
::  大类分为磁盘、系统工具、系统管理、控制面板、文件夹、网址
::  输入为空时更新key文本
::  找不到对应的界面时, 会根据当前输入key和key文本进行字符串相似度比较, 提供建议
set key=%1
set guessKeyFile=lib\gKey.txt
if "%1"=="" (
    (for /f "tokens=1-4 delims== " %%i in (%~f0) do if "%%i %%j %%k"=="if /i %%1" echo %%l)>%guessKeyFile%
    exit
)



::========================= 磁盘 =========================
for %%i in (c d e f g h s b i) do if /i %1==%%i call :disk %%i
::========================= 磁盘 =========================




::========================= 系统工具 =========================
if /i %1==calc call :system 计算器 "start calc"
if /i %1==jisuanqi call :system 计算器 "start calc"
if /i %1==osk call :system 虚拟键盘 osk
if /i %1==jianpan call :system 虚拟键盘 osk
if /i %1==wmp call :system WindowsMediaPlayer "start wmp"
if /i %1==notepad call :system 记事本 notepad
if /i %1==jishiben call :system 记事本 notepad
if /i %1==mspaint call :system 画图 mspaint
if /i %1==huatu call :system 画图 mspaint
if /i %1==snippingtool call :system 截图 snippingtool
if /i %1==jietu call :system 截图 snippingtool
::========================= 系统工具 =========================





::========================= 系统管理 =========================
if /i %1==regedit call :system 注册表 regedit
if /i %1==zhucebiao call :system 注册表 regedit
if /i %1==gpedit call :system 组策略 gpedit.msc
if /i %1==zucelue call :system 组策略 gpedit.msc
if /i %1==msconfig call :system 系统配置 msconfig
if /i %1==msinfo32 call :system 系统信息 msinfo32

if /i %1==winver call :system windows版本 winver
if /i %1==winversion call :system windows版本 winver
if /i %1==mstsc call :system 远程桌面[terminalServicesClient] mstsc
if /i %1==yuanchengzhuomian call :system 远程桌面[terminalServicesClient] mstsc
if /i %1==explorer call :system 资源管理器 explorer
if /i %1==sndvol call :system 音量合成器 sndvol
if /i %1==snd call :system 音量合成器 sndvol

if /i %1==systempropertiesadvanced call :system 高级系统设置[包含环境变量、计算机名、远程连接] systempropertiesadvanced
if /i %1==huanjingbianliang call :system 高级系统设置[包含环境变量、计算机名、远程连接] systempropertiesadvanced
if /i %1==taskmgr call :system 任务管理器 taskmgr
if /i %1==renwuguanliqi call :system 任务管理器 taskmgr
if /i %1==uac call :system 用户账户通知控制 UserAccountControlSettings

if /i %1==compmgmt call :system 计算机管理[包含磁盘管理、事件查看器、性能监视器、设备管理器、服务] compmgmt.msc
if /i %1==diskmgmt call :system 磁盘管理 diskmgmt.msc
if /i %1==perfmon call :system 性能监视器 perfmon.msc
if /i %1==devmgmt call :system 设备管理器 devmgmt.msc
if /i %1==eventvwr call :system 事件查看器 eventvwr.msc
if /i %1==taskschd call :system 任务计划 taskschd.msc
if /i %1==task call :system 任务计划 taskschd.msc
if /i %1==services call :system 服务 services.msc
if /i %1==fuwu call :system 服务 services.msc
::========================= 系统管理 =========================






::========================= 控制面板 =========================
if /i %1==control call :system 控制面板 control
if /i %1==ctl call :system 控制面板 control
if /i %1==kongzhimianban call :system 控制面板 control

if /i %1==ctltimedate call :system 日期和时间 timedate.cpl
if /i %1==ctldate call :system 日期和时间 timedate.cpl
if /i %1==ctlapp call :system 程序和功能 appwiz.cpl
if /i %1==ctlinternet call :system Internet属性 inetcpl.cpl
if /i %1==ctlsysdm call :system 系统属性 sysdm.cpl
if /i %1==ctlshezhi call :system 系统属性 sysdm.cpl
if /i %1==ctldesk call :system 桌面设置 desk.cpl
if /i %1==ctlmouse call :system 鼠标属性 main.cpl
if /i %1==ctlquyu call :system 区域 intl.cpl
if /i %1==ctlsound call :system 声音 mmsys.cpl
if /i %1==ctlsnd call :system 声音 mmsys.cpl
if /i %1==ctlpower call :system 电源选项 powercfg.cpl
if /i %1==ctldianyuan call :system 电源选项 powercfg.cpl
if /i %1==ctlfirewall call :system window防火墙 Firewall.cpl
if /i %1==ctlfanghuoqiang call :system window防火墙 Firewall.cpl
if /i %1==ctlwangluo call :system 网络连接 ncpa.cpl
if /i %1==ctlnetwork call :system 网络连接 ncpa.cpl
::========================= 控制面板 =========================






::========================= 文件夹 =========================
::系统
if /i %1==temp call :directory %temp%
if /i %1==pro call :directory "%systemdriver%\Program Files"
if /i %1==pro2 call :directory "%systemdriver%\Program Files (x86)"
if /i %1==code call :directory C:\code
if /i %1==desk (if exist %userprofile%\desktop (call :directory %userprofile%\desktop) else (call :directory %userprofile%\桌面))
if /i %1==ctheme call :directory C:\Windows\Resources\Themes
if /i %1==theme (
    if /i "%2"=="" call :directory D:\theme
    if /i "%2"=="win7" call :directory D:\theme\主题们\win7主题
    if /i "%2"=="c" call :directory %systemdrive%\Windows\Resources\Themes
    goto :404
)
if /i %1==startmenu call :directory "C:\Users\Admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if /i %1==down call :directory C:\Users\Admin\Downloads\
if /i %1==download call :directory C:\Users\Admin\Downloads\
if /i %1==systask call :directory C:\Windows\System32\Tasks
if /i %1==host call :directory %systemdriver%\Windows\System32\drivers\etc
if /i %1==home call :directory C:\Users\Admin
::资料
if /i %1==movie call :directory I:\movie
if /i %1==music call :directory D:\music
if /i %1==pic call :directory D:\pic
if /i %1==study call :directory F:\study
::应用
if /i %1==baiduyunlocal call :directory 百度云本地 D:\BaiduYunDownload
::========================= 文件夹 =========================




::========================= 网址 =========================
::识别网址
set "target=%1"
if /i "%target:~0,4%"=="http" call :chrome %1& goto :EOF
::金融
if /i %1==ljs call :chrome 陆金所 https://www.lu.com/
if /i %1==zfb call :chrome 支付宝 https://www.alipay.com/
if /i %1==zhifubao call :chrome 支付宝 https://www.alipay.com/
::购物
if /i %1==doubandongxi call :chrome 豆瓣东西 https://dongxi.douban.com/
if /i %1==shenmezhidemai call :chrome 什么值得买 http://www.smzdm.com/
if /i %1==smzdm call :chrome 什么值得买 http://www.smzdm.com/
if /i %1==taobao (
	if /i "%2"=="" call :chrome 淘宝 https://www.taobao.com/
	call :chrome 淘宝 "https://s.taobao.com/search?q=%2"
)
if /i %1==jd call :chrome 京东 https://www.jd.com/
if /i %1==tianmao call :chrome 天猫 https://www.tmall.com/
if /i %1==tianmaochaoshi call :chrome 天猫超市 https://chaoshi.tmall.com/
if /i %1==tmcs call :chrome 天猫超市 https://chaoshi.tmall.com/
if /i %1==yanxuan call :chrome 网易严选 http://you.163.com/
::知识
if /i %1==zhihu call :chrome 知乎 http://www.zhihu.com/
::聊天
if /i %1==weixin call :chrome 微信网页版 https://wx.qq.com/
if /i %1==weibo call :chrome 新浪微博 http://weibo.com/
::工具
if /i %1==baiduyun call :chrome 百度云 http://pan.baidu.com/
if /i %1==json call :chrome JSON格式后 http://www.bejson.com/
if /i %1==md5 call :chrome md5计算 http://www.atool.org/file_hash.php/
if /i %1==qr call :chrome 二维码 http://tool.oschina.net/qr/
if /i %1==12306 call :chrome 12306 https://kyfw.12306.cn/otn/leftTicket/init
if /i %1==baiduditu call :chrome 百度地图 http://map.baidu.com/
if /i %1==baidumap call :chrome 百度地图 http://map.baidu.com/
::邮箱
if /i %1==sinamail call :chrome 新浪邮箱 http://mail.sina.com.cn/
if /i %1==gmail call :chrome 谷歌邮箱 https://mail.google.com/
if /i %1==mailsina call :chrome 新浪邮箱 http://mail.sina.com.cn/
if /i %1==mailgg call :chrome 谷歌邮箱 https://mail.google.com/
if /i %1==mailqq call :chrome QQ邮箱 https://mail.qq.com/
if /i %1==mail163 call :chrome 网易163邮箱 http://mail.163.com/
::娱乐
if /i %1==qiushibaike call :chrome 糗事百科 http://www.qiushibaike.com/
if /i %1==bili set key=bilibili
if /i %key%==bilibili (
	if /i "%2"=="" call :chrome B站 http://www.bilibili.com/
	call :chrome B站 "http://search.bilibili.com/all?keyword=%2"
)
::搜索引擎
if /i %1==baidu (
    if /i "%2"=="" call :chrome 百度 https://www.baidu.com/
	call :chrome 百度 "https://www.baidu.com/s?wd=%2"
)
if /i %1==bing call :chrome bing http://cn.bing.com/
if /i %1==google call :chrome google "https://www.google.com.hk/?gws_rd=cr,ssl"
if /i %1==gg call :chrome google "https://www.google.com.hk/?gws_rd=cr,ssl"
if /i %1==ggstore call :chrome google https://chrome.google.com/webstore/category/extensions
if /i %1==chromestore call :chrome google https://chrome.google.com/webstore/category/extensions
::电影
if /i %1==doubandianying (
	if /i "%2"=="" call :chrome 豆瓣电影 https://movie.douban.com/
	call :chrome 豆瓣电影 "https://movie.douban.com/subject_search?search_text=%2"
)
if /i %1==shiguang call :chrome 时光网 http://www.mtime.com/
::资讯
if /i %1==douban call :chrome 豆瓣 https://www.douban.com/
::手机
if /i %1==kuan (
	if /i "%2"=="" call :chrome 酷安 http://www.coolapk.com/
	call :chrome 酷安 "http://www.coolapk.com/search?q=%2"
)
if /i %1==wandoujia call :chrome 豌豆荚 http://www.wandoujia.com/apps
::视频
if /i %1==aiqiyi call :chrome 爱奇艺 http://www.iqiyi.com/
::技术
if /i %1==qiniu call :chrome 七牛云存储 https://portal.qiniu.com/bucket
if /i %1==github call :chrome github https://github.com/bjc5233
if /i %1==npm (
	if /i "%2"=="" call :chrome npm https://www.npmjs.com
	call :chrome npm "https://www.npmjs.com/search?q=%2"
)
::other
if /i %1==next call :chrome nexttoyou http://www.nexttoyou.me/
if /i %1==nextadmin call :chrome nexttoyou-admin http://www.nexttoyou.me/wp-admin/
if /i %1==huaban call :chrome 花瓣 http://huaban.com/
::========================= 网址 =========================









::========================= 文档编辑 =========================
if /i %1==edithost call :npp %systemdriver%\Windows\System32\drivers\etc\hosts
::========================= 文档编辑 =========================







::========================= 公共 =========================
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
::========================= 公共 =========================