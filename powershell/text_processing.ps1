Select-String -Path "specified_file.txt" -Pattern "ERROR"

Select-String -Path "logfile.txt" -Pattern "\d{4}-\d{2}-\d{2}" | % {
	$_.Matches.Value
}

