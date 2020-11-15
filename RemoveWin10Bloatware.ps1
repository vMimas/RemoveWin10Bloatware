# RemoveWin10Bloatware.ps1

# Show removable packages, non-framework packages
'BEFORE: '
Get-AppxPackage | where {($_.nonremovable -eq 0) -and ($_.IsFramework -eq 0)} | Select Name, PackageFullName
''

# --------------------
# GREYLIST: Check this list CAREFULLY before running
#---------------------
# Remove Calendar and Mail:
Get-AppxPackage *communicationsapps* | Remove-AppxPackage

# Remove Microsoft Office:
Get-AppxPackage *OfficeHub* | Remove-AppxPackage

# Remove OneNote:
Get-AppxPackage *OneNote* | Remove-AppxPackage

# Remove Skype:
Get-AppxPackage *Skype* | Remove-AppxPackage

# Remove Sound Recorder
#Get-AppxPackage *SoundRecorder* | Remove-AppxPackage

# Remove Xbox stuff
#Get-AppxPackage *Xbox* | where {($_.nonremovable -eq 0) -and ($_.IsFramework -eq 0)} | Remove-AppxPackage

# Remove Desktop App Installer
# For sideloading Windows 10 apps without PowerShell.
#Get-AppxPackage *DesktopAppInstaller* | Remove-AppxPackage

# ----------------------------------------
# BLACKLIST: (Probably unwanted bloatware)
# ----------------------------------------
# Remove 3DBuilder
Get-AppxPackage *3dbuilder* | Remove-AppxPackage

# Remove 3DViewer
Get-AppxPackage *3DViewer* | Remove-AppxPackage

# Remove Print3D
Get-AppxPackage *Print3D* | Remove-AppxPackage

# Remove Alarms & Clock
Get-AppxPackage *Alarms* | Remove-AppxPackage

# Remove Bing apps: Money, News, Sports and Weather
Get-AppxPackage *Bing* | Remove-AppxPackage

# Remove Get Started
Get-AppxPackage *Getstarted* | Remove-AppxPackage

# Remove Get Help
Get-AppxPackage *GetHelp* | Remove-AppxPackage

# Remove Feedback Hub
Get-AppxPackage *Feedback* | Remove-AppxPackage

# Remove Maps
Get-AppxPackage *Maps* | Remove-AppxPackage

# Remove Messaging
Get-AppxPackage *Messaging* | Remove-AppxPackage

# Remove Mixed Reality Viewer
Get-AppxPackage *MixedReality* | Remove-AppxPackage

# Remove People:
Get-AppxPackage *People* | where {($_.nonremovable -eq 0) -and ($_.IsFramework -eq 0)} | Remove-AppxPackage

# Remove Phone and Phone Companion
Get-AppxPackage *Phone* | Remove-AppxPackage

# Remove Sticky Notes
Get-AppxPackage *Sticky* | Remove-AppxPackage

# Remove Sway:
Get-AppxPackage *Sway* | Remove-AppxPackage

# Remove Whiteboard
Get-AppxPackage *Whiteboard* | Remove-AppxPackage

# Remove Wallet
Get-AppxPackage *Wallet* | Remove-AppxPackage

# Remove Paid Wi-Fi
Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage

# Remove Paid Wi-Fi & Cellular
Get-AppxPackage *OneConnect* | Remove-AppxPackage

# BLACKLIST: GAMES AND THIRD PARY
# Remove Solitaire Collection:
Get-AppxPackage *Solitaire* | Remove-AppxPackage

#---------------------------------------------
# WHITELIST: (You probably want to keep these)
#---------------------------------------------
# Remove Camera
#Get-AppxPackage *Camera* | Remove-AppxPackage

# Remove Calculator
#Get-AppxPackage *Calculator* | Remove-AppxPackage

# Remove Groove Music
#Get-AppxPackage *ZuneMusic* | Remove-AppxPackage

# Remove Movies & TV
#Get-AppxPackage *ZuneVideo* | Remove-AppxPackage

# Remove MS Paint
#Get-AppxPackage *MSPaint* | Remove-AppxPackage

# Remove Photos
#Get-AppxPackage *Windows.Photos* | Remove-AppxPackage

# Remove Snip & Sketch (screen shot and annotation tool)
#Get-AppxPackage *ScreenSketch* | Remove-AppxPackage


'AFTER: '
Get-AppxPackage | where {($_.nonremovable -eq 0) -and ($_.IsFramework -eq 0)} | Select Name, PackageFullName

# ----------------------------------------------------
# Removing Windows Store:
# Note: need to double check this one.
#Get-AppxPackage *WindowsStore* | Remove-AppxPackage

# Reinstall all apps that were removable with this script:
# Get-AppxPackage -AllUsers | where {($_.nonremovable -eq 0) -and ($_.IsFramework -eq 0) -and ($_.name -notlike '*cortana*')} | foreach {Add-AppxPackage -register "$($_.InstallLocation)\appxmanifest.xml" -DisableDevelopmentMode}
# Reinstall all apps:
# Get-AppxPackage -allusers | foreach {Add-AppxPackage -register "$($_.InstallLocation)\appxmanifest.xml" -DisableDevelopmentMode}