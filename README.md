# navicat-refresh

### Version
- Navicat Premium 15 & 16 (Windows)

### Delete Navicat Registry File
- HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration[version and language]
    - ex : Registration15XCT, Registration16XEN
- HKEY_CURRENT_USER\Software\Classes\CLSID\\ * \Info
    - Delete all "Info" folder under CLSID (Parent folder name of Info may vary from person to person)
    - Be sure that will not delete other important file
