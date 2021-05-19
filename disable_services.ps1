#set-service bits | where {$_.status -eq 'running'} | stop-service -pass
#set-service bits | select *

#set-service XboxNetApiSvc -StartupType Disabled -PassThru | Stop-Service -PassThru
#set-service XboxNetApiSvc -StartupType Disabled
#Get-Service -Name "Browser", "Spooler", "XboxNetApiSvc","SensorDataService", "SensorService", "SmsRouter" | Format-Table -Auto
set-service XblAuthManager -StartupType Disabled