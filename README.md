# navicat-refresh

### Version
- Navicat Premium 17, 16, and 15 (Windows)

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

### Automating the Script with Windows Task Scheduler

You can automate the execution of this script by using Windows Task Scheduler, which allows you to schedule the script to run at regular intervals without any manual intervention.

#### Setting Up a Weekly Task in Windows Task Scheduler

1. **Open Task Scheduler:**
    - Press `Win + R`, type `taskschd.msc`, and press Enter to open Task Scheduler.

2. **Create a Basic Task:**
    - Click on **Create Basic Task** in the Actions pane on the right.
    - Name the task (e.g., "Navicat Refresh").

3. **Trigger Setup:**
    - Choose **Weekly**.
    - Choose a start date and time, set it to recur every 1 week.

4. **Action Setup:**
    - Select **Start a program** and click **Next**.
    - In the **Program/script** field, click **Browse** and navigate to the location of the `navicat-refresh.bat` file.

5. **Confirm and Finish:**
    - Review the settings to ensure everything is correct.
    - Click **Finish** to create the task.

#### Deleting the Task

If you no longer need the task, you can easily delete it:

1. **Open Task Scheduler:**
    - Press `Win + R`, type `taskschd.msc`, and press Enter to open Task Scheduler.

2. **Find and Delete the Task:**
    - In the left pane, click on **Task Scheduler Library**.
    - Find the task you created (e.g., "Navicat Refresh").
    - Right-click the task and select **Delete**.

## Special Thanks
Sincere appreciation goes to everyone in the community who contributed to improving this script, particularly those involved in [Issue 4](https://github.com/wctsai20002/navicat-refresh/issues/4). Your efforts have significantly enhanced the script's efficiency and expanded its compatibility to include Navicat Premium 17. Thank you for your ongoing support!
