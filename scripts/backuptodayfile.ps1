$source = "c:\transactionfile"
 $BackupDir = "D:\Backups"
 $BackupLogs = "D:\Backups\backuplogs.log"
 
 $currdate = Get-Date -Formate "DDMMYYYY"
 $BackupFolder = Jion-Path $BackupDir $currdate
 New-Iteam -IteamType Directory -Path $BackupFolder -Force | Out-Null
 
 $Todayfile = Get-ChildItem -Path $source -File | where-object {$_.LastwriteTime.Date -eq $currdate}
 
 Foreach ($File in $Todayfile){
  Copy-Iteam -Path $File.FUllName
			-Destination $BackupFolder
			-Recurse
			-Force
			-ErrorAction stop
			
	Add-Content -Path $BackupLogs -Value " Backup taken successfully filename: $($file.name) "
			}
			
Add-Content -Path $BackupLogs -Value "Backup completed on $(get-Date)"