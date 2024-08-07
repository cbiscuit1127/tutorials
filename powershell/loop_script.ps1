$processes = Get-Process
foreach ($process in $processes) {
	Write-Output "Process Name: $($process.Name), CPU: $($process.CPU)"
}

for ($i = 0; $i -lt 10; $i++) {
	Write-Output "This is iteration number $i"
}

$count = 0
while ($count -lt 5) {
	Write-output "Count is $count"
	$count++
}

$sequence = 1..10
$sequence
