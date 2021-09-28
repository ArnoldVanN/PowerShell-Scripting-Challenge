#challenge link https://ironscripter.us/are-you-listening-to-me/
hostname
Get-NetIPAddress -InterfaceAlias Wi-Fi -AddressFamily IPv4
Get-NetTCPConnection -LocalAddress 10.10.1.242