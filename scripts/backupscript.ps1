 $source = "c:\transactionfile"
 $BackupDir = "D:\Backups"
 $BackupLogs = "D:\Backups\backuplogs.log"
 
 $Date = Get-Date -Formate "DDMMYYYY"
 $BackupFolder = Join-Path $BackupDir $Date
 
 New-Item -IteamType Directory -Path $BackupFolder -Force | Out-Null
 
 Copy-Item -Path $Source\*
			-Destination $BackupFolder
			-Recurse
			-Force
			-ErrorAction stop
			
			
Add-Content -Path $BackupLogs -Value "Backup completed on $(get-Date)"