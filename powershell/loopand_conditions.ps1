for ($i = 1; $i -le 10; $i++) {
	$folderName = "folder{0:D2}" -f $i
	New-Item -Path $folderName -ItemType Directory -Force
}

for ($i = 1; $i -le 20; $i++) {
	if ($i % 2 -eq 1) {
		Write-Output "$i is odd."
	} else {
		Write-Output "$i is even."
	}
}
