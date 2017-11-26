"Hello World $(Get-Date)"
"From PS: $(docker version | out-string )"

#$PSVersionTable

# Get-PackageProvider -Name NuGet -ForceBootstrap #| Out-Null
# "Install from gallery"
# Install-Module ImportExcel -Force

# Import-Module ImportExcel

# Get-Command -Module  ImportExcel
# #Get-Process | Select-Object Company, Handles | Export-Excel