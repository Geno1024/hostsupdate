%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@color 3F
@title Hosts�Զ����³���
:MENU
@echo off
cls
echo.               =-=-=-=-=Hosts�Զ����³���˵�=-=-=-=-= 
echo.
echo. 1 ����hosts��RunningCheese��
echo.
echo. 2 ��ԭhosts.old1(����1)
echo.
echo. 3 ��ԭhosts.old2(����2)
echo.
echo. 4 ��������hosts(�ݲ�����)
echo.
echo. 5 �˳�
echo.
echo. ������ѡ����Ŀ����Ų����س�������
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
echo. ����hosts.old1��hosts.old2
ren hosts hosts.old1
echo. ��������hosts��hosts.old1
ren hosts.new hosts
echo. ����hosts�ɹ�
echo. �Ƿ�Ҫ�˳���y/n��
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:old1
cd /d C:\windows\system32\drivers\etc\
ren hosts hosts.ta
ren hosts.old1 hosts
ren hosts.ta hosts.old1
echo. ����hosts��hosts.old1
echo. �ָ�����1�ɹ�
echo. �Ƿ�Ҫ�˳���y/n��
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:old2
cd /d C:\windows\system32\drivers\etc\
ren hosts hosts.ta
ren hosts.old2 hosts
ren hosts.ta hosts.old2
echo. ����hosts��hosts.old2
echo. �Ƿ�Ҫ�˳���y/n��
set /p yn= :
if "%yn%"=="y" goto 5
if "%yn%"=="n" goto MENU
:updateone
cls
echo.               =-=-=-=-=�������²˵�=-=-=-=-= 
echo.
echo. 1 ����google(ûд��)
echo. 2 ����wikipedia(ûд��)
echo. 3 ����WordPress(ûд��)
echo. 4 ����GitHub(ûд��)
echo. 5 ����Twitter(ûд��)
echo. 6 ����Facebook(ûд��)
echo. 7 ����Flickr(ûд��)
echo. 8 ����Microsoft Live(ûд��)
echo. 9 ����Mozilla(ûд��)
echo. 10 ����Yahoo(ûд��)
echo. 11 �������˵�
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
echo. ����˵�˲������㻹����
goto updateone