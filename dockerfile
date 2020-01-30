# escape=`

FROM microsoft/iis
MAINTAINER Baris Usta
SHELL ["powershell", "-command"]

# Install ASP.NET
RUN Install-WindowsFeature NET-Framework-45-ASPNET; `  
    Install-WindowsFeature Web-Asp-Net45

# Configure website
EXPOSE 8082  
RUN Remove-Website -Name 'Default Web Site'; `  
    md c:\inetpub\wwwroot\buggybits; `
    New-Website -Name 'buggy-bits' `
                -Port 8082 -PhysicalPath 'c:\inetpub\wwwroot\buggybits' `
                -ApplicationPool '.NET v4.5'

# Setup app pool for LocalDB access
RUN Import-Module WebAdministration; `  
    Set-ItemProperty 'IIS:\AppPools\.NET v4.5' -Name 'processModel.loadUserProfile' -Value 'True'; `
    Set-ItemProperty 'IIS:\AppPools\.NET v4.5' -Name 'processModel.setProfileEnvironment' -Value 'True'
	
RUN Set-Acl -Path c:\inetpub\wwwroot\buggybits -AclObject (Get-Acl -Path "C:\inetpub\wwwroot");

# Unlock custom config
RUN & c:\windows\system32\inetsrv\appcmd.exe `  
      unlock config `
      /section:system.webServer/handlers

# To enable Req Monitoring on Container-IIS
# Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor	  

COPY site c:\inetpub\wwwroot\buggybits