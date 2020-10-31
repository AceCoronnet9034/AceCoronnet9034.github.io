@echo off 
for /l %%a in (2,1,29) do netsh interface ip add address name="本地连接 4" addr=196.64.192.%%a mask=255.255.255.224