#http://blogs.technet.com/b/heyscriptingguy/archive/2012/02/28/use-powershell-to-configure-static-ip-and-dns-settings.aspx
#Просто 4 команды. Это не совсем скрипт.
$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"

$wmi.EnableStatic("10.0.0.15", "255.255.255.0")

$wmi.SetGateways("10.0.0.1", 1)

$wmi.SetDNSServerSearchOrder("10.0.0.100")
