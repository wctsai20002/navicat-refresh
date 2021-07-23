@echo off

echo Delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration15XCS
echo waiting......
reg delete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration15XCS" /va /f
echo.

echo Delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update
echo waiting......
reg delete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update" /va /f
echo.

echo Delete Info folder under HKEY_CURRENT_USER\Software\Classes\CLSID
echo waiting......

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\Classes\CLSID" /s | findstr /E Info"') do (
    reg delete %%i /va /f
)

echo.
echo Finish 

pause
