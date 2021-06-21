#$wc = New-Object System.Net.WebClient
Clear-Host

$url = "https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.1/Git-2.32.0-64-bit.exe"
$output = "$PSScriptRoot/Git-2.32.0-64-bit.exe"
$start_time = Get-Date

Start-BitsTransfer -Source $url -Destination $output -DisplayName "Git" -Description "Téléchargement de Git" -TransferType "Download"

$url = "https://github.com/PowerShell/PowerShell/releases/download/v7.1.3/PowerShell-7.1.3-win-x64.msi"
$output = "$PSScriptRoot/PowerShell-7.1.3-win-x64.msi"
Start-BitsTransfer -Source $url -Destination $output -DisplayName "PowerShell" -Description "Téléchargement de PowerShell 7.1.3" -TransferType "Download"



$url = "https://az764295.vo.msecnd.net/stable/507ce72a4466fbb27b715c3722558bb15afa9f48/VSCodeUserSetup-x64-1.57.1.exe"
$output = "$PSScriptRoot/VSCodeUserSetup-x64-1.57.1.exe"
Start-BitsTransfer -Source $url -Destination $output -DisplayName "Visual Studio Code" -Description "Téléchargement de Visual Studio Code" -TransferType "Download"

Write-Host -ForegroundColor Red -BackgroundColor White "Installation  de Git"


$ExePath64 = Get-ChildItem -Path "$dirFiles" -Include Git-2.32.0-64-bit.exe -File -Recurse -ErrorAction SilentlyContinue
If ($ExePath64.Exists) {
        #Start-Process -wait -FilePath "$ExePath64" -ArgumentList '/VERYSILENT', '/NORESTART' 
}

$ExePath64 = Get-ChildItem -Path "$dirFiles" -Include PowerShell-7.1.3-win-x64.msi -File -Recurse -ErrorAction SilentlyContinue
If ($ExePath64.Exists) {
        Start-Process -wait -FilePath "$ExePath64" -ArgumentList '/quiet'
}