function Get-Fibonacci {
	param (
		[int]$n
	)
	$a = 0
	$b = 1
	$sequence = @($a, $b)

	for ($i = 2; $i -lt $n; $i++) {
		$next = $a + $b
		$sequence += $next
		$a = $b
		$b = $next
	}
	return $sequence
}

function Get-Factorial {
	param (
		[int]$n
	)
	$fact = 1
	for ($i = 1; $i -le $n; $i++) {
		$fact *= $i
	}
	return $fact
}

$fibonacci = Get-Fibonacci -n 10
Write-Output $fibonacci

$factorial = Get-Factorial -n 5
Write-Output $factorial

