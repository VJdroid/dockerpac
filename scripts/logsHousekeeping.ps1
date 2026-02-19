$logfolder = "c:\Logs"
$time = 30
$logfile = "c:\scripts\logs_clean.txt"

$cutoffDate = (Get-Date).AddDays(-$time)

$oldfile = Get-ChildItem -Path $logfolder -Filter "*.log" -File | Where-Object { $_.LastWriteTime -lt $cutoffDate}

foreach ( $File in $OldFiles) {

Remove-Iteam $File.FullName -Force
Add-Content -Path $LogFile -Value " older logs remover: $($file.name) "
}
 Add-Content -Path $logfile  -Value "Cleanup completed $($oldfile.count)) files"