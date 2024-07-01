@echo off
set bildpfad="C:\Users\PC\Downloads\debug\system21\win10\Data\backup"

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %bildpfad% /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters