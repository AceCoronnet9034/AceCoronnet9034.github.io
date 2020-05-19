@echo off


::获取运行路径
setlocal EnableDelayedExpansion
cd /d "%~dp0"


::定义bat外观
title Windows KMS激活脚本
MODE con: COLS=88 lines=16
color 0a


::检测xp系统
ver | find "5." > nul && goto :xptooff





::配置 KMS服务器
set kmsroot=pin.v0v.bid


::菜单
:begin
cls
echo.
echo.
echo.
echo.	===== Windows KMS激活脚本 =====
echo.
echo. --[1]--激活 Windows 系统 支持 Windows 2008/2008R2/2012/2012R2/2016 Vista/7/8/8.1/10
echo.
echo.

goto start



::激活Windows
:start
cls
echo.
echo.
echo.
echo.
echo. 已连接服务器....
cscript //Nologo %windir%\system32\slmgr.vbs /xpr | find "已永久激活" > NUL && goto wintooff

::检测系统版本
ver | find "6.0." > NUL &&  goto winvista
ver | find "6.1." > NUL &&  goto win7
ver | find "6.2." > NUL &&  goto win8
ver | find "6.3." > NUL &&  goto win81
ver | find "10.0." > NUL &&  goto win10
echo.
echo. 你的操作系统不支持KMS激活(可能是WinXP或Win2003)。
echo.
echo. 操作已完成！按任意键返回开始菜单。
pause>nul
goto begin


::导入激活密钥
:winvista
echo.
echo. 当前为Windows Vista/2008，开始尝试激活.....
echo.

::vista

set Business=YFKBB-PQJJV-G996G-VWGXY-2V3X8
set BusinessN=HMBQG-8H2RH-C77VX-27R82-VMQBT

set Enterprise=VKK3X-68KWM-X2YGT-QR4M6-4BWMV
set EnterpriseN=VTC42-BM838-43QHV-84HX6-XJXKV

::2008

set ServerWeb=WYR28-R7TFJ-3X2YQ-YCY4H-M249D
set ServerStandard=TM24T-X9RMF-VWXK6-X8JC9-BFGM2

set ServerStandardV=W7VD6-7JFBR-RX26B-YKQ3Y-6FFFJ
set ServerEnterprise=YQGMW-MPWTJ-34KDK-48M3W-X4Q6V

set ServerEnterpriseV=39BXF-X8Q23-P2WWT-38T2F-G3FPG
set ServerWeb=RCTX3-KWVHP-BR6TB-RB6DM-6X7HP

set ServerDatacenter=7M67G-PC374-GR742-YH8V4-TCBY3
set ServerDatacenterV=22XQ2-VRXRG-P8D42-K34TD-G3QQC

set ServerEnterpriseIA64=4DWFP-JF3DJ-B7DTH-78FJB-PDRHK

goto windowsstart


::导入激活密钥
:win7
echo.

::win7

echo. 当前为Windows 7/2008 R2，开始尝试激活.....
echo.
set Professional=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
set ProfessionalN=MRPKT-YTG23-K7D7T-X2JMM-QY7MG
set ProfessionalE=W82YF-2Q76Y-63HXB-FGJG9-GF7QX

set Enterprise=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
set EnterpriseN=YDRBP-3D83W-TY26F-D46B2-XCKRJ
set EnterpriseE=C29WB-22CC8-VJ326-GHFJW-H9DH4

::2008R2

set ServerWeb=6TPJF-RBVHG-WBW2R-86QPH-6RTM4
set ServerHPC=TT8MH-CG224-D3D7Q-498W2-9QCTX

set ServerStandard=YC6KT-GKW9T-YTKYR-T4X34-R7VHC
set ServerEnterprise=489J6-VHDMP-X63PK-3K798-CPX3Y

set ServerDatacenter=74YFP-3QFB3-KQT8W-PMXWJ-7M648
set ServerEnterpriseIA64=GT63C-RJFQ3-4GMB6-BRFB9-CB83V

goto windowsstart


::导入激活密钥
:win8
echo.
echo. 当前为Windows 8/2012，开始尝试激活.....
echo.

::win8

set Professional=NG4HW-VH26C-733KW-K6F98-J8CK4
set ProfessionalN=XCVCF-2NXM9-723PB-MHCB7-2RYQQ

set Enterprise=32JNW-9KQ84-P47T8-D8GGY-CWCK7
set EnterpriseN=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT

::2012

set Core=BN3D2-R7TKB-3YPBD-8DRP2-27GG4
set CoreN=8N2M2-HWPGY-7PGT9-HGDD8-GVGGY

set CoreSingleLanguage=2WN2H-YGCQR-KFX6K-CD6TF-84YXQ
set CoreCountrySpecific=4K36P-JN4VD-GDC6V-KDT89-DYFKP

set ServerStandard=XC9B7-NBPP2-83J2H-RHMBY-92BT4
set ServerMultiPointStandard=HM7DN-YVMH3-46JC3-XYTG7-CYQJJ

set ServerMultiPointPremium=XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G
set ServerDatacenter=48HP8-DN98B-MYWDG-T2DCC-8W83P

goto windowsstart


::导入激活密钥
:win81
echo.
echo. 当前为Windows 2012R2/8.1，开始尝试激活.....
echo.

::win8.1

set Professional=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
set ProfessionalN=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY

set Enterprise=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
set EnterpriseN=TT4HM-HN7YT-62K67-RGRQJ-JFFXW

::2012R2

set ServerDatacenter=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
set ServerStandard=D2N9P-3P6X9-2R39C-7RTCD-MDVJX
set ServerSolution=KNC87-3J2TX-XB4WP-VCPJV-M4FWM

goto windowsstart


::导入激活密钥
:win10
echo.
echo. 当前为Windows 10，开始尝试激活.....
echo.

::win10

set Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX
set ProfessionalN=MH37W-N47XK-V7XM9-C7227-GCQG9

set Enterprise=NPPR9-FWDCX-D2C8J-H872K-2YT43
set EnterpriseN=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4

set Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set EducationN=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ


set EnterpriseS=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
set EnterpriseSN=2F77B-TNFGY-69QQF-B8YKP-D69TJ

set EnterpriseN=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
set EnterpriseSN=QFFDN-GRT3P-VKWWX-X7T3R-8B639

set EnterpriseG=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
set EnterpriseGN=44RPN-FTY23-9VTTB-MP9BX-T84FV

::2016

set ServerDatacenter=CB7KF-BWN84-R7R2Y-793K2-8XDDG
set ServerStandard=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
set ServerEssentials=JCKRF-N37P4-C2D82-9YXRT-4M63B

goto windowsstart


::激活系统
:windowsstart
cls
echo.
echo.
echo.
echo. 正在激活操作系统！请稍后.....
for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set EditionID=%%i
if defined %EditionID% (
	cscript //Nologo %windir%\system32\slmgr.vbs /ipk !%EditionID%! >nul
	cscript //Nologo %windir%\system32\slmgr.vbs /skms %kmsroot% >nul
	cscript //Nologo %windir%\system32\slmgr.vbs /ato >nul
	cscript //Nologo %windir%\system32\slmgr.vbs /xpr | find /i "激活" >nul && (
	echo. & echo. ***** 操作系统 激活成功 ***** & echo.) || (echo. & echo. ***** 操作系统 激活失败 ***** & echo.)
) else (
	echo.
	echo. 激活失败！请先升级你的操作系统为批量VL版本。
)
echo.
exit


::跳过永久激活
:wintooff
cls
echo.
echo.
echo.
echo. 系统已经永久激活！无需KMS激活。按任意键返回开始菜单。
echo.
echo.
echo. 操作已完成！按任意键返回开始菜单。
pause>nul
goto begin


::检测到xp退出
:xptooff
cls
echo.
echo.
echo.
echo. ***** 当前系统为 WinXP 或 Win2003！不支持 KMS激活。 *****
echo.
echo.
echo. 操作已完成！按任意键返回开始菜单。
pause>nul
goto begin

cd /d "%~dp0"
goto :EOF