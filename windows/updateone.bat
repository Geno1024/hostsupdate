echo %0 %1
set ggg=2796
copy C:\Windows\System32\drivers\etc\hosts hosts.bac
wget -O hosts.new http://www.runningcheese.com/hosts
pause
set n=0
rem ѡȡ��1��
goto clear
:clear
set /A n=%n%+1
	set n-=1
	if "%%n"=="0"( set "skip=") else (set "skip=skip=%%n")
	for /f "%skip% tokens=* delims="  %%i in (.\config\%1) do (
	set address=%%i&&goto:a)
	rem ѡȡ��n�е�ַ
	:a
		rem ����
		findstr /v "%address%" hosts.bac >hosts.bac2
		Del hosts.bac
		Ren hosts.bac2 hosts.bac
		rem ɾ����n�е�ַ��hosts�ж�Ӧ��Ŀ
if %m% LSS %ggg% goto clear
set n=0
goto add
:add
	set /A m=%n%+1
	set n=%m%
	set n-=1
	if "%n%"=="0"( set "skip=") else (set "skip=skip=%n%")
	for /f "%skip% tokens=* delims="  %%i in (.\config\%1) do (
	set address=%%i&&goto:b)
	rem ѡȡ��n�е�ַ
	:b
		for /f %%a in ('find "%address%" ^<hosts.new') do set "a=%%a"
		rem ѡȡ��n�е�ַ��IP
		for %%i in (hosts) do echo %a%	%address%  >>%%i
		rem �Ѽ���hosts
if %m% LSS %ggg% goto add