"Hello World $(Get-Date)"

docker build -t stuff .
# docker build --tag dougfinke/mydockerimagex:v1.0.0 .

#"From PS: $(docker version | out-string )"

#$PSVersionTable

# Get-PackageProvider -Name NuGet -ForceBootstrap #| Out-Null
# "Install from gallery"
# Install-Module ImportExcel -Force

# Import-Module ImportExcel

# Get-Command -Module  ImportExcel
# #Get-Process | Select-Object Company, Handles | Export-Excel