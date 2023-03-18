$appChrome = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B0B9A015E-2D82-F4DD-739A-FEAD06BF8314%7D%26lang%3Den%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe"
$appVSCode = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$appNotepadPP = "https://notepad-plus-plus.org/repository/7.x/7.0/npp.7.Installer.exe"
$appPython = "https://www.python.org/ftp/python/3.9.9/python-3.9.9.exe"
$appTelegram = "https://updates.tdesktop.com/tsetup/tsetup.4.6.5.exe"
$appArduino = "https://downloads.arduino.cc/arduino-ide/arduino-ide_2.0.4_Windows_64bit.exe"
$appWireshark = "https://2.na.dl.wireshark.org/win64/Wireshark-win64-4.0.4.exe"
$appVirtualBox = "https://download.virtualbox.org/virtualbox/7.0.6/VirtualBox-7.0.6-155176-Win.exe"
$appGit = "https://github.com/git-for-windows/git/releases/download/v2.40.0.windows.1/Git-2.40.0-64-bit.exe"
$appKDEConnect = "https://download.kde.org/stable/release-service/22.08.1/windows/kdeconnect-kde-22.08.1-windows-msvc2019_64-cl.exe"
$appKrita = "https://download.kde.org/stable/krita/4.4.3/krita-x64-4.4.3-setup.exe"
$appDiscord = "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86"
$appITunes = "https://www.apple.com/itunes/download/win64"

$argsChrome = "/silent /install"
$argsVSCode = "/VERYSILENT /NORESTART /MERGETASKS=!runcode"
$argsNotepadPP = "/S /D=C:\NotepadPlusPlus"
$argsPython = "/quiet PrependPath=1"
$argsTelegram = "/VERYSILENT /NORESTART"
$argsArduino = "/S"
$argsWireshark = "/S"
$argsVirtualBox = "--silent --ignore-reboot"
$argsGit = "/VERYSILENT /NORESTART"
$argsKDEConnect = "/S"
$argsKrita = "/S"
$argsDiscord = "-s"
$argsITunes = "REBOOT=ReallySuppress /qn"

$out = "$env:temp/installer.exe"
function Install-App {
	param (
        [ValidateNotNullOrEmpty()]
		[string]$Name
	)
	$Url = Get-Variable app$Name -ValueOnly
	$Args = Get-Variable args$Name -ValueOnly
	Invoke-WebRequest -Uri $Url -OutFile $out
	Start-Process -Filepath $out -ArgumentList $Args
}

Install-App -Name $app