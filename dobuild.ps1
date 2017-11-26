"Hello World $(Get-Date)"
$PSVersionTable

"Install from gallery"

Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null
Install-Module ImportExcel -Force

Import-Module ImportExcel

Get-Process | Select-Object Company, Handles | Export-Excel