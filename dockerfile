FROM microsoft/powershell:6.0.0-rc-nanoserver-1709
WORKDIR "Program Files"
USER ContainerAdministrator
RUN rd /S /Q PowerShell\Modules\PSReadLine
USER ContainerUser
WORKDIR /

# FROM debian:jessie-slim

# # Disables a lot of apt-get output that we don't want during an unattended install.
# ENV DEBIAN_FRONTEND noninteractive

# # Update package list and install dependencies.
# RUN apt-get update && apt-get install -y \
#         apt-transport-https \
#         apt-utils \
#         curl

# # Import the public repository GPG keys for Microsoft
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# # Register the Microsoft .deb repository.
# RUN curl https://packages.microsoft.com/config/ubuntu/14.04/prod.list | tee /etc/apt/sources.list.d/microsoft.list

# # Update package list again and install PowerShell.
# RUN apt-get update && apt-get install -y powershell

# # Change the default shell to PowerShell.
# SHELL ["pwsh", "-Command"]

# # Runs on start. The loop keeps the container alive until it is terminated.
# CMD while($true){Start-Sleep -Seconds 60}