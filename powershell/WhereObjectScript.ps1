$processes = Get-Process
$processes | Where-Object { $_.CPU -gt 100 }

$services = Get-Service
$services | ? { $_.Status -eq 'Running' }

$processes | ? { $_.CPU -gt 100 -and $_.Name -eq 'chrome' }

