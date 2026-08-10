$url = "?????"
$msi = "C:\Temp\ScreenConnect.msi"
mkdir C:\Temp -Force | Out-Null
Invoke-WebRequest -Uri $url -OutFile $msi -UseBasicParsing
Start-Process msiexec.exe -ArgumentList "/i `"$msi`" /qb /norestart" -NoNewWindow -Wait
Remove-Item $msi -Force
