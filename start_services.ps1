#$Service="CertPropSvc"
#$Service="LicenseManager"
#$Service="RmSvc"
#$Service="lfsvc" #Service 'Geolocation Service (lfsvc)' cannot be configured due to the following error: The system cannot find the file specified
                 #At D:\ЛИТ-NOC\PShell\start_services.ps1:6 char:1

#$Service="DiagTrack"
$Service="Audiosrv"
Set-Service $Service -StartupType Manual
start-service $Service