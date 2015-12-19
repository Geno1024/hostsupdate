%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@color 3F
@title Hosts自动更新程序
:MENU
@echo off
cls
echo.               =-=-=-=-=Hosts自动更新程序菜单=-=-=-=-= 
echo.
echo. 1 更新hosts（RunningCheese）
echo.
echo. 2 还原hosts.old1(备份1)
echo.
echo. 3 还原hosts.old2(备份2)
echo.
echo. 4 单独更新hosts(暂不可用)
echo.
echo. 5 退出
echo.
echo. 请输入选择项目的序号并按回车键运行
set /p Sakura= :
cls

if "%Sakura%"=="1" goto updateall
if "%Sakura%"=="2" goto old1
if "%Sakura%"=="3" goto old2
if "%Sakura%"=="4" goto updateone
if "%Sakura%"=="5" goto exit

:updateall
cd /d C:\windows\system32\drivers\etc\
wget -O hosts.new http://www.runningcheese.com/hosts
ren hosts.old1 hosts.old2
echo. 备份hosts.old1至hosts.old2
ren hosts hosts.old1
echo. 备份现有hosts至hosts.old1
ren hosts.new hosts
echo. 更新hosts成功
echo. 是否要退出（y/n）
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:old1
cd /d C:\windows\system32\drivers\etc\
ren hosts hosts.ta
ren hosts.old1 hosts
ren hosts.ta hosts.old1
echo. 交换hosts与hosts.old1
echo. 恢复备份1成功
echo. 是否要退出（y/n）
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:old2
cd /d C:\windows\system32\drivers\etc\
ren hosts hosts.ta
ren hosts.old2 hosts
ren hosts.ta hosts.old2
echo. 交换hosts与hosts.old2
echo. 是否要退出（y/n）
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:updateone
cls
echo.               =-=-=-=-=单独更新菜单=-=-=-=-= 
echo.
echo. 1 更新google(没写完)
echo. 2 更新wikipedia(没写完)
echo. 3 更新WordPress(没写完)
echo. 4 更新GitHub(没写完)
echo. 5 更新Twitter(没写完)
echo. 6 更新Facebook(没写完)
echo. 7 更新Flickr(没写完)
echo. 8 更新Microsoft Live(没写完)
echo. 9 更新Mozilla(没写完)
echo. 10 更新Yahoo(没写完)
echo. 11 返回主菜单
set /p Kanade= :
if "%Kanade%"=="1" goto google
if "%Kanade%"=="2" goto wikipedia
if "%Kanade%"=="3" goto WordPress
if "%Kanade%"=="4" goto GitHub
if "%Kanade%"=="5" goto Twitter
if "%Kanade%"=="6" goto Facebook
if "%Kanade%"=="7" goto Flickr
if "%Kanade%"=="8" goto Microsoft
if "%Kanade%"=="9" goto Mozilla
if "%Kanade%"=="10" goto Yahoo
if "%Kanade%"=="11" goto MENU
:exit
exit
:google
call updateone.bat google
goto MENU
:wikipedia
call updateone.bat wikipedia
goto MENU
:WordPress
call updateone.bat WordPress
goto MENU
:GitHub
call updateone.bat GitHub
goto MENU
:Twitter
call updateone.bat Twitter
goto MENU
:Facebook
call updateone.bat Facebook
goto MENU
:Flickr
call updateone.bat Flickr
goto MENU
:Microsoft
call updateone.bat Microsoft
goto MENU
:Mozilla
call updateone.bat Mozilla
goto MENU
:Yahoo
call updateone.bat Yahoo
goto MENU
:error
cls
echo. 跟你说了不可用你还不信
goto updateone