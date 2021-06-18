$wc = New-Object System.Net.WebClient

$url = "https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.1/Git-2.32.0-64-bit.exe"
$output = "$PSScriptRoot/Git-2.32.0-64-bit.exe"
$start_time = Get-Date

Start-BitsTransfer -Source $url -Destination $output

$url = "https://github.com/PowerShell/PowerShell/releases/download/v7.1.3/PowerShell-7.1.3-win-x64.msi"
$output = "$PSScriptRoot/PowerShell-7.1.3-win-x64.msi"
Start-BitsTransfer -Source $url -Destination $output



$url = "https://az764295.vo.msecnd.net/stable/507ce72a4466fbb27b715c3722558bb15afa9f48/VSCodeUserSetup-x64-1.57.1.exe"
$output = "$PSScriptRoot/VSCodeUserSetup-x64-1.57.1.exe"
Start-BitsTransfer -Source $url -Destination $output