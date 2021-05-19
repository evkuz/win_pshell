Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
# Set-ExecutionPolicy ByPass

# Посмотреть службы : services.msc

# Получить список сервисов 
# https://social.technet.microsoft.com/wiki/contents/articles/32962.powershell-listing-windows-services.aspx

#Список отключаемых служб

#$DisabledServicesList = @("Audiosrv", "AJRouter", "Apple Mobile Device Service", "AppIDSvc", "BDESVC","ClipSVC","KeyIso","Browser","DiagTrack","dmwappushservice","Fax","lfsvc","Stereo Service","SensorDataService","SensorService","SensrSvc","SkypeUpdate","ScDeviceEnum","SNMPTRAP", "XblGameSave", "XblAuthManager", "XboxNetApiSvc", "Bonjour Service", "iPod Service","LicenseManager", "CertPropSvc", "RmSvc", "WbioSrvc", "AdobeARMservice")

$ManualServicesList = @("AJRouter", "Apple Mobile Device Service", "AppIDSvc", "BDESVC","ClipSVC","KeyIso","Browser","DiagTrack","dmwappushservice","Fax","lfsvc","Stereo Service","SensorDataService","SensorService","SensrSvc","SkypeUpdate","ScDeviceEnum","SNMPTRAP", "XblGameSave", "XblAuthManager", "XboxNetApiSvc", "Bonjour Service", "iPod Service","LicenseManager", "CertPropSvc", "RmSvc", "WbioSrvc", "AdobeARMservice", "UsoSvc", "wuauserv")

#Это половина сервисов
#$DisabledServicesList = @("Audiosrv", "AJRouter", "Apple Mobile Device Service", "AppIDSvc", "BDESVC","ClipSVC","KeyIso","DiagTrack","dmwappushservice","Fax","lfsvc","Stereo Service","SensorDataService","SensorService","SensrSvc","SkypeUpdate")
#$DisabledServicesList = @("ScDeviceEnum","SNMPTRAP", "XblGameSave", "XblAuthManager", "XboxNetApiSvc", "Bonjour Service", "iPod Service","LicenseManager", "CertPropSvc", "RmSvc", "WbioSrvc", "AdobeARMservice")

#"Audiosrv" => Display name "Windows Audio"

#foreach ($Service in $DisabledServicesList)
#{
#Set-Service -Name $Service -StartupType Disabled
#Stop-Service -Force -Name $Service
#}


Foreach ($Service in $ManualServicesList)
{
Set-Service -Name $Service -StartupType Manual
Start-Service -Name $Service
}


#SharedAccess , NetTcpPortSharing

# PeerDistSvc == "BranchCache"

# Выключаем индексирование, обращение к диску.
# UsoSvc = "Update Orchestrator Service for Windows Update" 
# wuauserv = "Windows Update"
# WinRM  = "Windows Remote Management (WinRM) service implements the WS-Management protocol for remote management. 
#           WS-Management is a standard web services protocol used for remote software and hardware management. 
#           The WinRM service listens on the network for WS-Management requests and processes them. 
#           The WinRM Service needs to be configured with a listener using winrm.cmd command line tool or through Group Policy in order for it to listen over the network. 
#           The WinRM service provides access to WMI data and enables event collection. Event collection and subscription to events require that the service is running. 
#           WinRM messages use HTTP and HTTPS as transports. The WinRM service does not depend on IIS but is preconfigured to share a port with IIS on the same machine.  
#           The WinRM service reserves the /wsman URL prefix. To prevent conflicts with IIS, administrators should ensure that any websites hosted on IIS do not use the /wsman URL prefix."