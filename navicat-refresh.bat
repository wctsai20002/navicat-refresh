@echo off

reg delete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration15XCT" /va /f

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\Classes\CLSID" /s | findstr /E Info"') do (
    reg delete %%i /va /f
)
