# ConditionalScript.ps1
# 入力された数値が正の数か負の数かを判定するスクリプト
param (
	[int]$number
)

if ($number -gt 0) {
	Write-Output "$number is a positive number."
} elseif ($number -lt 0) {
	Write-Output "$number is a negative number."
} else {
	Write-Output "$number is zero."
}

