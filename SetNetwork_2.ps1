#Меняем сетевые настройки
$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername . | where{$_.IPEnabled -eq $true -and $_.DHCPEnabled -eq $true} 
Foreach($NIC in $NICs) { 
    $ip = ($NIC.IPAddress[0]) 
    $gateway = $NIC.DefaultIPGateway 
    $subnet = $NIC.IPSubnet[0] 
    $dns = $NIC.DNSServerSearchOrder 
    $NIC.EnableStatic($ip, $subnet) 
    $NIC.SetGateways($gateway) 
    $NIC.SetDNSServerSearchOrder($dns) 
    $NIC.SetDynamicDNSRegistration("FALSE") 
} 
IPConfig /all