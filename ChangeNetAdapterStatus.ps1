#NetConnectionStatus = 2 means "Connected"
#NetConnectionStatus = 0        "Disconnected"
#NetEnabled  = True  - сеть подключена
#NetEnabled  = False - сеть отключена
# NetConnectionID             : eth1 - так можем указать конкретно, какой адаптер

#Get-WmiObject -class win32_networkadapter -filter "NetConnectionStatus = 0" |


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++===
#$wmi = Get-WmiObject -Class Win32_NetworkAdapter -filter "NetEnabled  = False"

#$wmi.enable()
#+++++++++++++++++++++++++++++++++++++++

#=============================== Отключение интерфейса eth1 РАБОТАЕТ !!!!!!!!!!!!!!!!!! ====================================
$wmi = Get-WmiObject -class win32_NetworkAdapter -filter "NetConnectionID LIKE '%eth1%'"
$wmi.disable()

#================================================================================================

#Get-WmiObject -class win32_networkadapter -filter "NetEnabled  = False" |

#Get-WmiObject -class win32_NetworkAdapter -filter "NetConnectionID LIKE '%eth1%'" |

#format-list -Property [a-z]*