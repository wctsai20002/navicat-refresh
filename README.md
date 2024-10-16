# navicat-refresh

### Version
- Navicat Premium 17, 16, and 15 (Windows)

## Introducing Navicat Premium Lite

If you're researching this project, you might be interested to know that Navicat has launched a new product called **Navicat Premium Lite**. It's free and can be used for commercial purposes. The only thing you need to do is register an account. For details on usage and licensing, please refer to the final EULA provided by Navicat.

You can learn more about Navicat Premium Lite [here](https://www.navicat.com/en/products/navicat-premium-lite) and download it [here](https://www.navicat.com/en/download/navicat-premium-lite).

## Script Functionality

### Delete Navicat Registry Entries
The script will delete the following registry entries:

1. **Navicat Registration Entries**
   - The script will locate and delete all registration entries under:
     ```
     HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration[version and language]
     ```
     - Examples:
       - `Registration15XCT`
       - `Registration16XEN`
       - `Registration17XEN`

2. **Delete "Info" and "ShellFolder" Entries under CLSID**
   - The script will identify and delete all "Info" and "ShellFolder" folders under the CLSID registry path:
     ```
     HKEY_CURRENT_USER\Software\Classes\CLSID\{ID}\Info
     ```
   - Note: The parent folder name of "Info" and "ShellFolder" may vary from person to person, so the script is designed to carefully locate and remove these entries without affecting other important files.

## How to Use
1. Download the script.
2. Run the script as an administrator to ensure it has the necessary permissions to delete the registry entries.

## Special Thanks
Sincere appreciation goes to everyone in the community who contributed to improving this script, particularly those involved in [Issue 4](https://github.com/wctsai20002/navicat-refresh/issues/4). Your efforts have significantly enhanced the script's efficiency and expanded its compatibility to include Navicat Premium 17. Thank you for your ongoing support!

## Disclaimer
Please review the [DISCLAIMER](DISCLAIMER.md) before using this script. The script is provided for educational purposes only, and misuse may violate software licenses or laws.