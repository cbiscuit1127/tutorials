New-Item -Path "practice" -ItemType Directory -Force

foreach ($i in 1..3) {
	New-Item -Path "practice/file$i.txt" -ItemType File -Force
}

"Hello, World!" | Set-Content -Path "practice/file1.txt"
Get-Date | Set-Content -Path "practice/file2.txt"
Get-ChildItem | Out-String | Set-Content -Path "practice/file3.txt"

