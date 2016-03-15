# Installer Scripts (Mostly via Chocolatey/Boxstarter)
#
#
# Boxstarter to manage installations.
# try {
#
#    Write-ChocolateySuccess 'ode_toolkit'
#} catch {
#  Write-ChocolateyFailure 'ode_toolkit' $($_.Exception.Message)
#  throw
#}

# Run all scripts.
Update-ExecutionPolicy Unrestricted
# Confirm all licenses/defaults (for now)
choco feature enable -n=allowGlobalConfirmation
# Set regular explorer options.
Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
# Make taskbar not stupid large.
Set-TaskbarSmall

# Browers
cinst googlechrome
cinst firefox

# wget - directly download files from the
cinst wget

# Git-related
# Git, obviously.
cinst git
# GitHub desktop - wuss.
cinst github
# Powershell extensions for Git
cinst poshgit

# Windows
# Windows debugging tools
cinst windbg
# A real awesome powershell/terminal front-end.
cinst conemu
# Powershell Community Extensions
cinst pscx
# Expresso - the app that will finally teach you how to harness the power of regular expressions
cist expresso
# AutoHotKey
cinst autohotkey
# GrepWin - regular expression searching of folders (State security doesn't like DLs from Sourceforge, sadly)
cinst grepwin
# Node.js
cinst nodejs.install
# Anaconda3 - Miniconda Distro, not all packages.
cinst miniconda3
# SublimeText 3 - the best text editor out there, really.
cinst sublimetext3
# Microsoft SQL Server Express (alas, too much of what we do is $MSFT-centric.)
cinst mssqlserver2014express
# Microsoft Visual Studio 2015 Community with Update 1
cinst visualstudio2015community
# SQLite DB Browser
cinst sqlitebrowser
# Putty - greenscreen/ssh client, which you can run in Conemu: https://conemu.github.io/en/ChildGui.html
cinst putty
# Baretail - log viewer/maker-senser-of-er
cinst baretail
# 7-zip
cinst 7-zip.install
# SysInternals -
cinst sysinternals
# Nmap - because networks are interesting and yours should be secure
cinst nmap
# CCleaner - keep things running at peak performance.
cinst ccleaner
# CCEnhancer - add over 1,000 programs to CCleaner.
cinst ccenhancer
# WinDirStat - where'd my storage go? Oh. There.
cinst windirstat
# Telnet - Windows
cinst TelnetClient -source windowsFeatures
# Greenshot - open source screenshot app.
cinst greenshot
# Pandoc - convert any document to any other document.
cinst pandoc


#And now, update friggin' Windows.
Install-WindowsUpdate -AcceptEula
