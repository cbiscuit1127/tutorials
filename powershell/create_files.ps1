mkdir practice
foreach ($i in 1..3) {
	New-Item -Path "./file$i.txt"
}
"Hello, World!" > "file1.txt"
Get-Date > "file2.txt"
Get-ChildItem > "file3.txt"

