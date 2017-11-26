"Hello World $(Get-Date)"
$PSVersionTable

Get-PackageProvider -Name NuGet -ForceBootstrap #| Out-Null

"Install from gallery"
Install-Module ImportExcel -Force

Import-Module ImportExcel

Get-Module -list ImportExcel
#Get-Process | Select-Object Company, Handles | Export-Excel