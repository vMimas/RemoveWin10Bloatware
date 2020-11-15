# RemoveWin10Bloatware

A simple program for removing unwanted, built-in Windows 10 AppX apps.

## Usage:

Clone and open with your preferred code or text editor (or the *PowerShell ISE*). There are three sections to pay attention to: 

1. **Greylist** contains apps you want to check carefully, as they may be ones you want to keep. A `#` at the beginning of a line inactivates it. 

2. **Blacklist** contains apps that I can't imagine the average person wanting, but make sure to double check this section. These lines are enabled by default and the apps will be removed unless you put a `#` in front of them.

3. **Whitelist** contains apps that most users will probably want to keep (example: the default photo viewer). These lines are disabled by default and the apps won't be removed unless you remove the `#` ate the front of `Get-Appx *appName*`.

## Running:

You will need to open a PowerShell terminal or ISE as an Administrator.

If you haven't done any PowerShell scripting before, script execution is probably still disabled. Open *PowerShell* or *PowerShell ISE* and enter `Set-ExecutionPolicy Unrestricted` into the terminal.

If run through the terminal or *PowerShell ISE*, the script will output the original list of removable installed AppX apps (excluding frameworks), followed by a list of the ones left after the program runs.


