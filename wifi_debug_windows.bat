:CONNECT

@echo off
@echo ------------------------------------x--------------------------------
@echo PLEASE MAKE SURE THIS DEVICE AND YOUR ANDROID PHONE ARE CONNECTED ON THE SAME NETWORK

adb disconnect
adb usb>nul

PING -n 5 127.0.0.1>nul

adb tcpip 5555>nul

PING -n 7 127.0.0.1>nul

@echo FETCHING IPv4 and IPv6
adb shell ip addr show wlan0|findstr inet

@echo,
@echo(
@echo PLEASE ENTER IP ADDR UNDER inet till before /

set /p ip=Enter IP:

adb connect %ip%

set /p done=done(y/n)???
d
IF %done%==n GOTO CONNECT
